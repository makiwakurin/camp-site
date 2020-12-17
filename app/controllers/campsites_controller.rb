class CampsitesController < ApplicationController
  before_action :set_campsite, only:[:destroy, :edit, :update, :show]
  before_action :authenticate_user!, except: [:index, :show]

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
   if @campsite.destroy
    redirect_to root_path
   else
    render :index
   end
  end

  def edit
  end

  def update
    if @campsite.update(campsite_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
  end

  private 

  def campsite_params
    params.require(:campsite).permit(:name, :text, :image).merge(user_id: current_user.id)
  end

  def set_campsite
    @campsite = Campsite.find(params[:id])
  end

end

