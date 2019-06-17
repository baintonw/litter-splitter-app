class SessionsController < ApplicationController

  def new
  end
  def create
    #authenticate the user
    @user = User.find_by(params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
    end
  end

  def destroy
    session[:user_id] = nil
  end

end
