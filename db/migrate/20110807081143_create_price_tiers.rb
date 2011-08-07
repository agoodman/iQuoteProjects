class CreatePriceTiers < ActiveRecord::Migration
  def self.up
    create_table :price_tiers do |t|
      t.integer :price_group_id
      t.integer :min_quantity
      t.float :unit_price

      t.timestamps
    end
  end

  def self.down
    drop_table :price_tiers
  end
end
