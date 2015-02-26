class RantsController < ApplicationController

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
