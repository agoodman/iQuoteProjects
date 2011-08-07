class Project < ActiveRecord::Base

  belongs_to :user
  has_many :feature_requests
  has_many :features, :through => :feature_requests
  
  validates_presence_of :user_id, :title, :email, :starts_on, :ends_on
  
end
