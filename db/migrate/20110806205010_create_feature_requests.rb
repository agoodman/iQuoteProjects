class CreateFeatureRequests < ActiveRecord::Migration
  def self.up
    create_table :feature_requests do |t|
      t.integer :project_id
      t.integer :feature_id
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :feature_requests
  end
end
