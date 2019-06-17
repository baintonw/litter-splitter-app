class SessionsController < ApplicationController

  def new
  end

  def create
    #authenticate the user
    @user = User.find_by(params[:username])
    byebug
    if @user && @user.authenticate(params[:password])
      byebug
      session[:user_id] = @user.id
      redirect_to user_path
    end
  end

  def destroy
    session[:user_id] = nil
  end

end
