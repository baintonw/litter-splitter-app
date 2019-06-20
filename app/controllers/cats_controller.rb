class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  # def new
  #   @cat = Cat.new
  # end
  #
  # def create
  #   @cat = Cat.create(cat_params)
  #   session[:user_id] = @user.id
  #   redirect_to user_feed_path(@user)
  # end

  def show
    @cat = Cat.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def adopt
    @user = User.find(session[:user_id])
    @cat = Cat.find(params[:id])
    if !@cat.adopted?
      @cat.toggle(:adopted)
    end
    @cat.update(:user_id => @user.id)

    # @cat.toggle
    redirect_to user_path(@user)
  end

  def give_up
    @user = User.find(session[:user_id])
    @cat = Cat.find(params[:id])
    @cat.release
    @cat.save

    redirect_to user_path(@user)
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
#need to add name, age, gender, description, and img_url to params to create new cat
end


# def toggle_active
#    if @blog.active?
#      @blog.update(active: false)
#    else
#      @blog.update(active: true)
#    end
#  end
