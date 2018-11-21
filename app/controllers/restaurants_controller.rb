class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurants_path
  end

  private
  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
