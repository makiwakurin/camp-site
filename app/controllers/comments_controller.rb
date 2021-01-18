class CommentsController < ApplicationController

  def create
    # binding.pry
    comment = Comment.create(comment_params)
    redirect_to  campsite_path(comment.campsite.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, campsite_id: params[:campsite_id])
  end

end
