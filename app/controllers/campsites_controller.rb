class CampsitesController < ApplicationController

  def index
    @campsites = Campsite.all
  end

  def new
    @campsite = Campsite.new
  end

  def create
    # binding.pry
    @campsite = Campsite.new(campsite_params)
    if @campsite.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @campsite = Campsite.find(params[:id])
   if @campsite.destroy
    redirect_to root_path
   else
    render :index
   end
  end

  def edit
    @campsite = Campsite.find(params[:id])
  end

  def show
    @campsite = Campsite.find(params[:id])
  end

  private 

  def campsite_params
    params.require(:campsite).permit(:name, :text, :image).merge(user_id: current_user.id)
  end

end

