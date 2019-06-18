class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @cats = Cat.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def feed
    @cats = Cat.all
  end


  private

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end
end
