require 'test_helper'

class PriceTierTest < ActiveSupport::TestCase

  should belong_to :price_group
  
  should validate_presence_of :price_group_id
  should validate_presence_of :min_quantity
  should validate_presence_of :unit_price
  
end
