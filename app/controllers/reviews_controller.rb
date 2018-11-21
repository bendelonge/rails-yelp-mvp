class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
    update_average_rating
    redirect_to restaurant_path(@review.restaurant)
  end

  private


  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def update_average_rating
    @restaurant = Restaurant.find(params[:restaurant_id])
    reviews = @restaurant.reviews
    rates = []
    reviews.each {|review| rates << review.rating}
    average = rates.inject{ |sum, el| sum + el }.to_f / rates.size
    @restaurant.average_rating = average
    @restaurant.save
  end

end
