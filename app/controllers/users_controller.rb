class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show; end

  def edit
    render 'users/new'
  end

  def create
    user = User.new(user_params)

    if user.save
      redirect_to users_path
    end
  end

  def update
    if @user.update(user_params)
      redirect_to users_path
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :email)
  end
end
