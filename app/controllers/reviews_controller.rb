

class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    parameters = review_params
    parameters[:restaurant_id] = params[:restaurant_id]
    @review = Review.new(parameters)
    if @review.save
      redirect_to restaurant_path(@review.restaurant_id)
    else
      redirect_to new_restaurant_review_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end
end
