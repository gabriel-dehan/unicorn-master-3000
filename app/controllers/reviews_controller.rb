class ReviewsController < ApplicationController
  def new
  	@unicorn = Unicorn.find(params[:unicorn_id])
  	@review = Review.new
  end

  def create
  	@unicorn = Unicorn.find(params[:unicorn_id])

  	@review = Review.new(review_params)
  	@review.unicorn = @unicorn
  	# @review.unicorn_id = params[:unicorn_id]
  	# @review.unicorn_id = @unicorn.id

  	@review.save

  	redirect_to unicorns_path
  end

  def review_params
  	params.require(:review).permit(:author, :content, :rating)
  end
end
