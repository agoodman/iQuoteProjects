require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  should belong_to :user
  should have_many :features
  
  should validate_presence_of :user_id
  should validate_presence_of :title

end
