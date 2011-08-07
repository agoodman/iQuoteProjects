class ProjectsController < ApplicationController

  before_filter :assign_user
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    # explicitly assign user id to prevent injection
    @project.user_id = @user.id
    if @project.save
      redirect_to user_project_path(@user,@project)
    else
      flash[:alert] = @project.errors.full_messages.join("<br/>")
      render :action => 'new'
    end
  end
  
  def show
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to user_project_path(@user,@project), :notice => 'Project updated.'
    else
      flash[:alert] = @project.errors.full_messages.join("<br/>")
      render :action => 'show'
    end
  end
  
  def report
    @project = Project.find(params[:id])
  end
  
  def assign_user
    @user = User.find(params[:user_id])
  end
  
end
