class PostsController < ApplicationController

  def index
    @posts = @posts = User.joins(:posts).select('users.*, posts.*') #selects all the field from both the table
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new()

  end

  def create

    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  private
  def post_params
    params.require(:post).permit(:user_id,:content,:caption)
  end


end
