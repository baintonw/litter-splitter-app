class ClaimsController < ApplicationController

  def adopt
    @user = User.find(session[:user_id])
    @cat = Cat.find(params[:id])
    @claim = Claim.create(:user_id => session[:user_id], :cat_id => @cat.id, :active => false)
    redirect_to user_path(session[:user_id])
  end
  
  def accept#needs route
    claim = Claim.find(params[:id])
    cat = Cat.find(claim.cat_id)
    cat.update(user_id: claim.user_id)
    cat.claims.destroy_all
    redirect_to user_path(session[:user_id])
  end

end
