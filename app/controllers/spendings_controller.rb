class SpendingsController < ApplicationController
  def index
    @user = current_user
    @group = Group.includes(:spendings).find(params[:group_id])
    @spendings = @group.spendings.where(user_id: @user.id).order(created_at: :desc)
  end

  def new
    @spending = Spending.new
    @spending.amount = 0
    @user = current_user
    @group = Group.find(params[:group_id])
  end

  def create
    @spending = Spending.new(spending_params)
    @spending.user_id = current_user.id
    @spending.group_id = params[:group_id]

    if @spending.save
      flash[:notice] = 'New transaction created successfully'
      redirect_to user_group_spendings_path(user_id: @spending.user_id, group_id: @spending.group_id)
    else
      flash[:alert] = 'Error creating new transaction'
      render :new
    end
  end

  def destroy
    @spending = Spending.find(params[:id])
    @group = Group.find(params[:group_id])
    @spending.destroy
    flash[:notice] = 'Transaction deleted successfully'
    redirect_to user_group_spendings_path
  end

  def spending_params
    params.require(:spending).permit(:name, :amount)
  end
end
