class LikesController < ApplicationController
  def create
    @origin = Origin.find(params[:origin_id])
    @like = current_user.likes.build(origin_id: params[:origin_id])
    @like.save
    @likeCounts = Like.where(origin_id: params[:origin_id])
  end

  def destroy
    @origin = Origin.find(params[:origin_id])
    @like = Like.find_by(origin_id: params[:origin_id], user_id: current_user.id)
    @like.destroy
    @likeCounts = Like.where(origin_id: params[:origin_id])
  end

end
