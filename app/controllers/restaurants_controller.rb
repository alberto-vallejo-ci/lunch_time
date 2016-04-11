class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.includes(:reviews).find(safe_params[:id])
  end

  def create
    Restaurant.create!(restaurant_params)
    redirect_to restaurants_url
  end

  def edit
    @restaurant = Restaurant.find(safe_params[:id])
  end

  def update
    restaurant = Restaurant.find(safe_params[:id])
    restaurant.update(restaurant_params)
    redirect_to restaurant_url(restaurant)
  end

  private

  def safe_params
    params.permit(:id)
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :telephone,
                                       :average_cost, :average_rate, :comments)
  end
end
