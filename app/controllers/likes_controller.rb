class LikesController < ApplicationController

  before_action :post_params

  def create
    Like.create(user_id: current_user.id, campsite_id: params[:id])
  end

  def destroy
    Like.find_by(user_id: current_user.id, campsite_id: params[:id]).destroy
  end

  private

  def post_params
    @campsite = Campsite.find(params[:id])
  end

end
