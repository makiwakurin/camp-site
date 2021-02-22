class ReviewsController < ApplicationController
  def index
    @campsite = Campsite.find(params[:campsite_id])
    @reviews = @campsite.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.valid?
       @review.save
      redirect_to  campsite_reviews_path(@review.campsite)
    else
      @campsite = Campsite.find(params[:campsite_id])
      @comment = Comment.new
      render  "campsites/show"
    end

  end

  private

  def review_params
    params.require(:review).permit(:campsite_id, :score, :content)
  end


end
