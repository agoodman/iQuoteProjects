require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase

  context "when not signed in" do
    setup do
      @user = Factory(:user)
      sign_out
    end
    
    context "on get new" do
      setup { get :new, :user_id => @user.id }
      
      should respond_with :success
      should assign_to :project
    end
    
    context "on post create" do
      setup { post :create, :user_id => @user.id, :project => Factory.attributes_for(:project, :user => @user) }
      
      should ("redirect to project"){redirect_to [@user,assigns(:project)]}
    end
    
    context "on get show" do
      setup do
        @project = Factory(:project, :user => @user)
        get :show, :user_id => @user.id, :id => @project.id
      end
      
      should respond_with :success
      should assign_to :project
    end
    
    context "on put update" do
      setup do
        @project = Factory(:project, :user => @user)
        put :update, :user_id => @user.id, :id => @project.id, :project => {}
      end
      
      should ("redirect to project"){redirect_to [@user,@project]}
    end
  end
  
end
