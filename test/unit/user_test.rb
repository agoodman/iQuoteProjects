class UserTest < ActiveSupport::TestCase

  should have_one :price_group
  should have_many :categories
  should have_many :projects
  
  should validate_presence_of :price_group_id
  should validate_presence_of :email

end
