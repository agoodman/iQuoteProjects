class AddDesignCompletenessToProjects < ActiveRecord::Migration

  def self.up
    add_column :projects, :design_completeness, :integer
  end

  def self.down
    remove_column :projects, :design_completeness
  end
  
end
