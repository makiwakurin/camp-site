class LikesController < ApplicationController

  def create
    Like.create(user_id: current_user.id, campsite_id: params[:id])
    redirect_to root_path
  end

end
