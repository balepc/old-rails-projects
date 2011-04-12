class RemoveItemPrice < ActiveRecord::Migration
  def self.up
    remove_column :items, :price
  end

  def self.down
    add_column :items, :price, :float
  end
end
