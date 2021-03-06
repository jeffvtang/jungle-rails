class ReviewsController < ApplicationController
  # def index
  #   @reviews = Review.all
  #   @reviews = @reviews.where(product_id: params[:product]) if params[:product].present?
  #   @reviews = @reviews.where(user_id: params[:user]) if params[:user].present?
  # end
  
  def create
    @review = Review.new(review_params)
    @review.save

    redirect_to :back
  end

  def destroy
    review_id = params[:review_id]
    Review.destroy(review_id)

    redirect_to :back
  end
  
  private

  def review_params
    params.require(:review).permit(:description, :rating, :product_id, :user_id)
  end

end
