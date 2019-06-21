class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
    @user = User.find(session[:user_id])
  end

  def create
    @cat = Cat.create(create_cat_params)
    redirect_to cat_path(@cat)
  end

  def show
    @cat = Cat.find(params[:id])
    @user = User.find(session[:user_id])

  end


  #give up should change user_id to nil




  # def toggle_adopted
  #   if self.adopted?
  #     self.update(adopted: false)
  #   else
  #     self.update(adopted: true)
  #   end
  # end#not working



  private

  def cat_owner_params
    params.require(:cat).permit(:user_id)
  end

  def cat_params
    params.require(:cat).permit(:id, :user_id)
  end

  def create_cat_params
    params.require(:cat).permit(:name, :age, :gender, :description, :user_id, :img_url)
  end
#need to add name, age, gender, description, and session[:user_id] img_url to params to create new cat
end

# def toggle_active
#    if @blog.active?
#      @blog.update(active: false)
#    else
#      @blog.update(active: true)
#    end
#  end
