class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.movie_id = params[:movie_id]
    @review.save
    # if @review.save
      flash.notice = 'Your review has been created'
      redirect_to movie_path(@review.movie_id)
    # else
    #   flash.notice = "#{@review.errors}"
    # end
  end

  private
  def review_params
    params.require(:review).permit(:author, :rating, :review)
  end
end
