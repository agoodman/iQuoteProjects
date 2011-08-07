require 'test_helper'

class FeatureTest < ActiveSupport::TestCase

  should belong_to :category
  
  should validate_presence_of :name
  should validate_presence_of :title
  should validate_presence_of :points
  
end
