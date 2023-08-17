class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = Group.where(user_id: current_user.id)
    @user = current_user
  end

  def new
    @group = Group.new
    @user = current_user
  end

  def create
    @group = Group.new(group_params)
    @group.user_id = current_user.id

    if @group.save
      flash[:notice] = 'Category created successfully'
      redirect_to user_groups_path
    else
      flash[:alert] = 'Category not created'
      render :new
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    flash[:danger] = 'Food was successfully deleted'
    redirect_to user_groups_path
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
