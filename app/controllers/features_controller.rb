class FeaturesController < ApplicationController

  before_filter :authenticate
  
  def create
    @feature = Feature.new(params[:feature])
    if @feature.save
      redirect_to edit_user_path
    else
      redirect_to edit_user_path, :alert => @feature.errors.full_messages.join("<br/>")
    end
  end
  
  def update
    @feature = Feature.find(params[:id])
    if @feature.update_attributes(params[:feature])
      redirect_to edit_user_path
    else
      redirect_to edit_user_path, :alert => @feature.errors.full_messages.join("<br/>")
    end
  end
  
  def destroy
    @feature = Feature.find(params[:id])
    @feature.destroy
    redirect_to edit_user_path
  end
  
end
