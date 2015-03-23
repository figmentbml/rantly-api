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
  
  helper_method :current_user

  private

  def require_login
    unless current_user
      render json: { error: "Please signin" }, status: :unauthorized
    end
  end

end
