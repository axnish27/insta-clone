class UsersController < ApplicationController
def index
  @users = User.all.where("id != ?", current_user.id)
  #returns all the users who are being followed by the current_user
  @followings = User.joins("JOIN follows ON users.id = follows.followee_id")
  .where("follows.user_id = ?", current_user.id).distinct

  @follow = Follow.new


  #@followers = []
  # + implent click on following to unfollow
  # + implement follow back
  # + implement if both are following
end



end

