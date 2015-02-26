class RantsController < ApplicationController
  before_action :set_rant, only: [:show]

  def index
    render json: Rant.all
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
