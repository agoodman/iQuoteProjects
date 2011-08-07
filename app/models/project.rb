class Project < ActiveRecord::Base

  belongs_to :user
  has_many :feature_requests
  has_many :features, :through => :feature_requests
  
  validates_presence_of :user_id, :title, :email, :starts_on, :ends_on, :design_completeness, :base_points

  default_scope :include => [ :feature_requests, :features ]
  
  def iterations_required
    total_points = base_points + feature_requests.collect {|req| req.quantity * req.feature.points}.inject {|sum,e| sum+e}
    puts "total points = #{total_points}"
    magnifier = 0.85 * (1 + Math.log((6 - design_completeness)/1.25))
    puts "magnifier = #{magnifier}"
    return ((total_points*magnifier).to_f / user.points_per_iteration.to_f).ceil
  end
  
  def estimated_price(iterations)
    user.price_group.price_tiers.reverse.select {|tier| tier.min_quantity < iterations}.first.unit_price * iterations
  end
  
end
