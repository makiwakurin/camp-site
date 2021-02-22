class CampsitesController < ApplicationController
  before_action :set_campsite, only:[:destroy, :edit, :update, :show]
  before_action :authenticate_user!, except: [:index, :category, :search, :show]
  before_action :search_category_campsite, only: [:index, :category]

  def index
    @campsites = Campsite.includes(:user).order('created_at DESC')
  end

  def new
    @campsite = Campsite.new
  end

  def create
    @campsite = Campsite.new(campsite_params)
    # binding.pry
    if @campsite.valid?
       @campsite.save
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
    @campsite = Campsite.find(params[:id])
    @review = Review.new
    @comment = Comment.new
    @comments = @campsite.comments.includes(:user)
  end

  def category
      @campsite = @q.result
      status_id = params[:q][:status_id_eq]
  if @status = Status.find_by(id: status_id)
    else
      redirect_to root_path
    end
  end

  def search
    @campsites = Campsite.search(params[:keyword])
  end


  private 

  def campsite_params
    params.require(:campsite).permit(:name, :text, :image, :genre_id, :prefecture_id, :status_id).merge(user_id: current_user.id)
  end

  def set_campsite
    @campsite = Campsite.find(params[:id])
  end

  def search_category_campsite
    @q = Campsite.ransack(params[:q])
  end

end
