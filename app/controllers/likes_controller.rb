class LikesController < ApplicationController

  def create
    @like = Like.new(likes_params)
    if @like.save
      redirect_to posts_path
    else
    end
  end

  private
  def likes_params
    params.require(:like).permit(:follower_id, :post_id)
  end

end

