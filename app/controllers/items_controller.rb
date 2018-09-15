class ItemsController < ApplicationController
  def create
    @user = User.find(current_user.id)
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user_id = @user.id
  
    if @item.save
      flash[:success] = "Item saved!"
      redirct_to user_path(@user.id)
    else
      flash[:alert] = "An error occurred saving this item. Please try again."
      redirct_to user_path(@user.id)
  end
end
