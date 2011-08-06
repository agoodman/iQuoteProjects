require 'test_helper'

class HomeControllerTest < ActionController::TestCase

  context "when not signed in" do
    setup do
      @user = Factory(:user)
      sign_out
    end
    
    context "on get index" do
      setup { get :index }
      
      should respond_with :success
    end
  end
  
  context "when signed in" do
    setup do
      @user = Factory(:user)
      sign_in_as @user
    end
    
    context "on get index" do
      setup { get :index }
      
      should respond_with :success
    end
  end
  
end
