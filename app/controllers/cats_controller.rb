class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def adopt
    @user = User.find(session[:user_id])
    @cat = Cat.find(params[:id])
    @cat.update(:user_id => @user.id)
    redirect_to user_path(@user)
  end

  private

  def cat_owner_params
    params.require(:cat).permit(:user_id)
  end

  def cat_params
    params.require(:cat).permit(:id, :user_id)
  end

end
