class UserTest < ActiveSupport::TestCase

  should have_one :price_group
  should have_many :categories
  should have_many :projects
  
  should validate_presence_of :email
  should validate_presence_of :points_per_iteration
  should validate_presence_of :price_per_iteration
  should validate_presence_of :base_points

end
