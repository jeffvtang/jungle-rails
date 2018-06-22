class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    # @reviews = @reviews.where(product_id: params[:product]) if params[:product].present?
    # @reviews = @reviews.where(user_id: params[:user]) if params[:user].present?

  end
end
