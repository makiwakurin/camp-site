class LikesController < ApplicationController
  before_action :camplike_params

  def create
    Like.create(user_id: current_user.id, campsite_id: params[:id])
  end

  def destroy
    Like.find_by(user_id: current_user.id, campsite_id: params[:id]).destroy
  end

  private

  def camplike_params
    @campsite = Campsite.find(params[:id])
  end

end
