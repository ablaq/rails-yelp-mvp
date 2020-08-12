class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.create(review_params)
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private

def review_params
  params.require(:restaurant).permit(:name, :address, :phone_number, :category)
end
end
