class User < ActiveRecord::Base
  include Clearance::User
  
  has_one :price_group
  has_many :categories
  has_many :projects

  validates_presence_of :points_per_iteration, :price_per_iteration, :base_points
  
  after_create :generate_default_price_group
  
  def generate_default_price_group
    price_group = PriceGroup.create(:user_id => id)
    PriceTier.create(:price_group_id => price_group.id, :min_quantity => 1, :unit_price => 3000)
    PriceTier.create(:price_group_id => price_group.id, :min_quantity => 2, :unit_price => 2500)
    PriceTier.create(:price_group_id => price_group.id, :min_quantity => 4, :unit_price => 2000)
  end
  
end
