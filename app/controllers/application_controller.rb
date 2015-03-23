class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  #protect_from_forgery with: :null_session

  before_action :require_login

  def current_user
    if request.headers['HTTP_AUTHORIZATION'] != "null"
      decoded_auth_token = JWT.decode(request.headers['HTTP_AUTHORIZATION'], nil, false)
      User.find_by(id: decoded_auth_token[0]["user_id"])
    end
  end

  def rant_match
    rant_list = Rant.where(user_id: current_user.id).pluck(:id)
    @rant = Rant.find(params[:id])
    unless rant_list.include?(@rant.id)
      raise render 'public/404', status: :not_found
    end
  end

  helper_method :current_user
  helper_method :rant_match

  private

  def require_login
    unless current_user
      render json: { error: "Please signin" }, status: :unauthorized
    end
  end

end
