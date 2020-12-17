class CampsitesController < ApplicationController

  def index
  end

  def new
    @campsite = Campsite.new
  end

  def create
    @campsite = Campsite.new(campsite_params)
    if @campsite.save
      redirect_to root_path
    else
      render :new
    end
  end

  private 

  def campsite_params
    params.require(:campsite).permit(:name, :text)
  end

end

