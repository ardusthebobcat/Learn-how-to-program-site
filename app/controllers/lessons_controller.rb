class LessonsController < ApplicationController
  def index
    @language = Language.find(params[:language_id])
    render :index
  end

  private
  def language_params
    params.require(:language).permit(:name)
  end
end
