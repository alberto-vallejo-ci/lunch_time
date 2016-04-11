class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(safe_params[:restaurant_id])
    @review = @restaurant.reviews.new
  end

  def create
    Review.create!(reviews_params)
    redirect_to restaurant_url(safe_params[:restaurant_id])
  end

  private

  def safe_params
    params.permit(:restaurant_id)
  end

  def reviews_params
    params.require(:review).permit(:name, :cost, :rate, :comments, :restaurant_id)
  end
end
