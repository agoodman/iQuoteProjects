class FeatureRequest < ActiveRecord::Base

  belongs_to :project
  belongs_to :feature
  
  validates_presence_of :project_id, :feature_id, :quantity
  validates_numericality_of :quantity
  
end
