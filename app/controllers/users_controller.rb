class UsersController < ApplicationController
def index
  @users = User.all.where("id != ?", current_user.id)
  #returns all the users who are being followed by the current_user

  @followings = current_user.follows.pluck(:followee_id)
  @pendings = current_user.sent_requests.pluck(:id)
  @follow_requests = User.includes(:recived_requests).find(current_user.id)

  @request = Request.new
  @follow = Follow.new


  #@followers = []
  # + implent click on following to unfollow
  # + implement follow back
  # + implement if both are following
end


def show
  @user = User.find(user_params[:id])
end


def update
  user = User.find_by(id: user_params[:id])
  user.profile_pic.attach(pic_params[:profile_pic])
  redirect_to user
end



private
def user_params
  params.permit(:id)
end

private
def pic_params
  params.require(:user).permit(:profile_pic)
end


end

