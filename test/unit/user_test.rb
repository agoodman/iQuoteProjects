class UserTest < ActiveSupport::TestCase

  should have_many :categories
  should have_many :projects
  
  should validate_presence_of :email

end
