class PriceGroup < ActiveRecord::Base

  belongs_to :user
  has_many :price_tiers, :order => 'min_quantity asc'
  
  validates_presence_of :user_id
  
  accepts_nested_attributes_for :price_tiers

end
