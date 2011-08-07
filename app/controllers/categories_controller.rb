class CategoriesController < ApplicationController

  before_filter :authenticate
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to edit_user_path
    else
      redirect_to edit_user_path, :alert => @category.errors.full_messages.join("<br/>")
    end
  end
  
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      redirect_to edit_user_path
    else
      redirect_to edit_user_path, :alert => @category.errors.full_messages.join("<br/>")
    end
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to edit_user_path
  end
  
end
