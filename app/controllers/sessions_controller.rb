class SessionsController < ApplicationController

  def new
  end

  def create
    #authenticate the user
    @user = User.find_by(:username => params[:username])

    if @user && @user.authenticate(params[:password_digest])

      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end
  end

  def destroy
    session[:user_id] = nil
  end

end
