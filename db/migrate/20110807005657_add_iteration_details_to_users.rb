class AddIterationDetailsToUsers < ActiveRecord::Migration

  def self.up
    add_column :users, :points_per_iteration, :integer
    add_column :users, :price_per_iteration, :float
  end

  def self.down
    remove_column :users, :points_per_iteration
    remove_column :users, :price_per_iteration
  end
  
end
