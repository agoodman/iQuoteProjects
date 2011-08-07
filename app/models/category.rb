class Category < ActiveRecord::Base

  belongs_to :user
  has_many :features
  
  validates_presence_of :user_id, :title
  
end
