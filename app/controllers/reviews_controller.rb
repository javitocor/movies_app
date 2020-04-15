class ReviewsController < ApplicationController
  def create
    @review = Review.create(review_params)
    @review.movie_id = params[:movie_id]
     if @review.save
      flash.notice = 'Your review has been created'
      redirect_to movie_path(@review.movie_id)
     else
       flash.notice ='ERROR: Review was not created, you must fill up all the fields'
       redirect_to movie_path(@review.movie_id)
     end
  end

  private
  def review_params
    params.require(:review).permit(:author, :rating, :review)
  end
end
