class ItemsController < ApplicationController
  def create
    @user = User.find(current_user.id)
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user_id = @user.id
  
    if @item.save
      flash[:success] = "Task saved!"
      redirect_to user_path(@user.id)
  end
end

  def destroy
    @user = User.find(params[:user_id])
    @item = Item.find(params[:id])
    @item.destroy

    if @item.destroy
      flash[:success] = "Nice!! You knocked the #{@item.name} task off your list."
      redirect_to user_path(@user.id)
  end

    respond_to do |format|
      format.html
      format.js
    end
  end
end