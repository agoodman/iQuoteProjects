class MoveBasePointsFromProjectsToUsers < ActiveRecord::Migration

  def self.up
    add_column :users, :base_points, :integer
    Project.all.each {|project| project.user.update_attributes(:base_points => project.base_points)}
    remove_column :projects, :base_points
  end

  def self.down
    add_column :projects, :base_points, :integer
    User.all.each {|user| user.projects.update_all(['base_points = ?',user.base_points])}
    remove_column :users, :base_points
  end

end
