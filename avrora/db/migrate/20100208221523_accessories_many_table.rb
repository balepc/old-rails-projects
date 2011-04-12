class AccessoriesManyTable < ActiveRecord::Migration
  def self.up
    rename_column(:items, :accessories, :accessory)

    create_table :accessories, :id=>false do |t|
      t.integer :item_id
      t.integer :accessory_id
    end
  end

  def self.down
  end
end
