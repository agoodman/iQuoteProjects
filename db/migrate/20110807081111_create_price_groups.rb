class CreatePriceGroups < ActiveRecord::Migration
  def self.up
    create_table :price_groups do |t|
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :price_groups
  end
end
