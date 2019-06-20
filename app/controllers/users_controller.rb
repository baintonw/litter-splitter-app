class UsersController < ApplicationController
  before_action :current_user, only: [:show, :feed]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @cats = Cat.all

    # @user.claims.each do |claim|
    #   @claims << claim.cat.name
    # end
    # @claims

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_feed_path(@user)
  end

  def feed
    @user = User.find(params[:id])
    @cats = Cat.all
  end

  #user actions

  def adopt
    @user = User.find(session[:user_id])
    @cat = Cat.find(params[:id])
    @claim = Claim.create(:user_id => session[:user_id], :cat_id => @cat.id, :active => false)
    redirect_to user_path(session[:user_id])
  end


  

  def give_up
    @user = User.find(session[:user_id])
    @cat = Cat.find(params[:id])
    @cat.release
    @cat.save
    redirect_to user_path(@user)
  end




  private

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end
end
