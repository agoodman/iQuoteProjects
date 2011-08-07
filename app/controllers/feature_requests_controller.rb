class FeatureRequestsController < ApplicationController
  
  def create
    @feature_request = FeatureRequest.new(params[:feature_request])
    if @feature_request.save
      redirect_to user_project_path(@feature_request.project.user,@feature_request.project)
    else
      redirect_to user_project_path(@feature_request.project.user,@feature_request.project)
    end
  end
  
  def update
    @feature_request = FeatureRequest.find(params[:id])
    if @feature_request.update_attributes(params[:feature_request])
      redirect_to user_project_path(@feature_request.project.user,@feature_request.project)
    else
      redirect_to user_project_path(@feature_request.project.user,@feature_request.project)
    end
  end
  
  def destroy
    @feature_request = FeatureRequest.find(params[:id])
    project = @feature_request.project
    @feature_request.destroy
    redirect_to user_project_path(project.user,project)
  end
  
end
