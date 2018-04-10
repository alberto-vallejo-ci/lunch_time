module Api
  class RestaurantsController < ApplicationController
    def index
      @restauransts = ::Restaurant.all
    end
  end
end
