require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

  context "when not signed in" do
    setup do
      @user = Factory(:user)
      sign_out
    end
    
    context "on get new" do
      setup { get :new }
      
      should respond_with :success
      should render_template :new
    end
    
    context "on post create" do
      setup { post :create, :session => { :email => @user.email, :password => @user.password } }
      
      should ("redirect to root"){redirect_to root_path}
    end
    
    context "on delete destroy" do
      setup { delete :destroy }
      
      should ("redirect to sign in"){redirect_to sign_in_path}
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
      setup { post :create, :session => { :email => @user.email, :password => @user.password } }
      
      should ("redirect to root"){redirect_to root_path}
    end
    
    context "on delete destroy" do
      setup { delete :destroy }
      
      should ("redirect to sign in"){redirect_to sign_in_path}
    end
  end
  
end
