class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    render json: User.all
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    @user.save

    render json: @user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation,
      :rant_id)
  end

end
