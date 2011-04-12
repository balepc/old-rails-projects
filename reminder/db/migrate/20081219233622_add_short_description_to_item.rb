class AddShortDescriptionToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :brief_description, :string
  end

  def self.down
    remove_column :items, :brief_description
  end
end
