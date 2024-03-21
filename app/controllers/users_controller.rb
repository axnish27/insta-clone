class UsersController < ApplicationController
before_action :authenticate_user!

def index
  @users = User.all
  # @follwing = User.where(:current_user)
end



end
