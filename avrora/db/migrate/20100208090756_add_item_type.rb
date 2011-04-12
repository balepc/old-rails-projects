class AddItemType < ActiveRecord::Migration

  def self.up
    add_column :items, :accessories, :boolean
  end

  def self.down
    remove_column :items, :accessories
  end

end
