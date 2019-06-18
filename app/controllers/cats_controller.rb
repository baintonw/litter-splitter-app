class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.update(cat_owner_params)
    redirect_to cat_path(@cat)
  end


  private

  def cat_owner_params
    params.require(:cat).permit(:user_id)
  end

end
