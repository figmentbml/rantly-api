class RantsController < ApplicationController
  before_action :set_rant, only: [:show, :update, :destroy]
  skip_before_action :require_login, only: [:index, :show]

  def index
    searched = params[:find]
    if searched
      @filtered = Rant.where("title LIKE ? OR body LIKE ?", "%#{searched}%", "%#{searched}%")
      render json: @filtered
    else
    render json: Rant.all.order(created_at: :desc)
    end
  end

  def create
    if current_user
      @rant = Rant.new(rant_params)
      @rant.user_id = current_user.id
      @rant.save
      render json: @rant
    end
  end

  def show
    render json: @rant
  end

  def update
    @rant.update(rant_params)
    render json: @rant
  end

  def destroy
    @rant.delete
    render json: {}
  end

  private

  def set_rant
    @rant = Rant.find(params[:id])
  end

  def rant_params
    params.require(:rant).permit(
      :title,
      :body,
      :created_at,
      :user_id
    )
  end
end
