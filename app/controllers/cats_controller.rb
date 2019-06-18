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
    # @cat.toggle
    redirect_to user_path(@user)
  end

  def toggle_adopted
    if self.adopted?
      self.update(adopted: false)
    else
      self.update(adopted: true)
    end
  end#not working

  private

  def cat_owner_params
    params.require(:cat).permit(:user_id)
  end

  def cat_params
    params.require(:cat).permit(:id, :user_id)
  end

end


# def toggle_active
#    if @blog.active?
#      @blog.update(active: false)
#    else
#      @blog.update(active: true)
#    end
#  end
