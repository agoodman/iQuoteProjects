class AddBasePointsToProjects < ActiveRecord::Migration

  def self.up
    add_column :projects, :base_points, :integer
  end

  def self.down
    remove_column :projects, :base_points
  end
  
end
