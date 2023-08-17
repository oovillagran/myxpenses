class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def user_groups_root
    if current_user
      redirect_to user_groups_path(current_user)
    else
      redirect_to users_path
    end
  end
end
