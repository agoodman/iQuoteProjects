class Feature < ActiveRecord::Base

  belongs_to :category
  
  validates_presence_of :name, :title, :points
  
end
