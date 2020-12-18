class OriginsController < ApplicationController

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

  private

  def origin_params
    params.require(:origin).permit(:book_title, :text, :youtube_url, :amazon, :category_id).merge(user_id: current_user.id)
  end


end
