class RantsController < ApplicationController
  before_action :set_rant, only: [:show]

  def index
    render json: Rant.all.order(created_at: :desc)
  end

  def create
    @rant = Rant.new(rant_params)
    @rant.save
    render json: @rant

  end

  def show
    render json: @rant
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
