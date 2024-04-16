class CommentsController < ApplicationController

  def index

  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      redirect_to posts_path
    #else
    #  render :create, status: :unprocessable_entity
    end

  end

  def show
    @comments = Comment.where(post_id: params[:id])

  end



  private
  def comment_params
    params.require(:comment).permit(:comment_text,:follower_id,:post_id)
  end

end
