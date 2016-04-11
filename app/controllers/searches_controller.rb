class SearchesController < ApplicationController
  def create
    @restaurants = Searches::SearchLogic.filter_restaurants(searches_params)
    render :show
  end

  private

  def searches_params
    params.require(:search).permit(cost: [:lowest, :highest], rate: [:lowest, :highest])
  end
end
