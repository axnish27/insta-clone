class FollowsController < ApplicationController

  def create
    @follow = Follow.new(user_id: current_user.id,followee_id: params[:followee_id])
    if @follow.save
      redirect_to root_path
    else
        
    end
  end

  def show

  end

  def destroy
    # @follow = Follow.find(params[:id])
    # @follow.destroy




  end
end
