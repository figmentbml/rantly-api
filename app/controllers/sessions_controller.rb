class SessionsController < ApplicationController

  skip_before_action :require_login

  def create
    user = User.find_by_email(params[:session][:email])
    login = user.authenticate(params[:session][:password])
    if login then
      session[:user_id] = user.id
      session[:authToken] = generate_auth_token(user.id)
      render json: { session: { success: true, token: session[:authToken], user_id: session[:user_id] } }
    else
      render json: { session: { success: false, error: "Invalid Username/Password" } }
    end
  end

  def generate_auth_token(user)
    payload = { user_id: user }
    JWT.encode( payload, 'secret' )
  end

  def destroy
    session.clear
    payload = { user_id: nil }
  end

end
