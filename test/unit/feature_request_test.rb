require 'test_helper'

class FeatureRequestTest < ActiveSupport::TestCase

  should belong_to :project
  should belong_to :feature
  
  should validate_presence_of :project_id
  should validate_presence_of :feature_id
  should validate_presence_of :quantity
  

end
