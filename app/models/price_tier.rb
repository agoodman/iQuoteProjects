class PriceTier < ActiveRecord::Base

  belongs_to :price_group
  
  validates_presence_of :price_group_id, :min_quantity, :unit_price
  
end
