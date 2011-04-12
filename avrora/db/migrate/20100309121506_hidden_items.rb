class HiddenItems < ActiveRecord::Migration
  def self.up
    add_column :items, :hidden, :boolean, :default=>false
  end

  def self.down
  end
end
