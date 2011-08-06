require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  context "when not signed in" do
    setup do
      @user = Factory(:user)
      sign_out
    end
    
    context "on get new" do
      setup { get :new }
      
      should respond_with :success
      should assign_to :user
    end
    
    context "on post create" do
      setup { post :create, :user => Factory.attributes_for(:user) }
      
      should ("redirect to root"){redirect_to root_path}
    end
    
    context "on get show" do
      setup { get :show }
      
      should ("redirect to sign in"){redirect_to sign_in_path}
    end
    
    context "on put update" do
      setup { put :update, :user => Factory.attributes_for(:user) }
      
      should ("redirect to root"){redirect_to root_path}
    end
    
    context "on delete destroy" do
      setup { delete :destroy }
      
      should ("redirect to root"){redirect_to root_path}
    end
  end

  context "when signed in" do
    setup do
      @user = Factory(:user)
      sign_in_as @user
    end
    
    context "on get new" do
      setup { get :new }
      
      should ("redirect to root"){redirect_to root_path}
    end
    
    context "on post create" do
      setup { post :create, :user => Factory.attributes_for(:user) }
      
      should ("redirect to root"){redirect_to root_path}
    end
    
    context "on get show" do
      setup { get :show }
      
      should respond_with :success
    end
    
    context "on put update" do
      setup { put :update, :user => Factory.attributes_for(:user) }
      
      should ("redirect to user"){redirect_to user_path}
    end
    
    context "on delete destroy" do
      setup { delete :destroy }
      
      should ("redirect to sign in"){redirect_to sign_in_path}
    end
  end

end
