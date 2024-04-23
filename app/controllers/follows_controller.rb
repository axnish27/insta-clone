class FollowsController < ApplicationController

  def create
    @follow = Follow.new(user_id: current_user.id,followee_id: follow_params[:followee_id],request_id: follow_params[:request_id])
    if @follow.save
      redirect_to root_path
    end
  end

  def show

  end

  def destroy
    # @follow = Follow.find(params[:id])
    # @follow.destroy
  end


  private

  def follow_params
    params.require(:follow).permit(:followee_id,:request_id)
  end
end
