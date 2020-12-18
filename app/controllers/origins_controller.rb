class OriginsController < ApplicationController
  before_action :set_origin, only: [:edit, :show, :update, :destroy]


  def index
    @origins = Origin.all
  end

  def new
    @origin = Origin.new
  end

  def create
    @origin = Origin.new(origin_params)
    @origin.user_id = current_user.id
    url = params[:origin][:youtube_url]
    url = url.last(11)
    @origin.youtube_url = url
    if @origin.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @origin.update(origin_params)
      redirect_to origin_path
    else
      render :edit
    end
  end

  def destroy
    @origin.destroy
    redirect_to root_path
  end

  private

  def origin_params
    params.require(:origin).permit(:book_title, :text, :youtube_url, :amazon, :category_id).merge(user_id: current_user.id)
  end

  def set_origin
    @origin = Origin.find(params[:id])
  end

end
