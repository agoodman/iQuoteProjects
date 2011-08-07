require 'test_helper'

class PriceGroupTest < ActiveSupport::TestCase

  should belong_to :user
  should have_many :price_tiers
  
  should validate_presence_of :user_id
  
end
