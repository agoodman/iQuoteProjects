require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  should belong_to :user
  should have_many :feature_requests
  
  should validate_presence_of :user_id
  should validate_presence_of :email
  should validate_presence_of :title
  should validate_presence_of :starts_on
  should validate_presence_of :ends_on

end
