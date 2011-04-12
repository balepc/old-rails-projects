class DefaultNotAccessory < ActiveRecord::Migration
  def self.up
    change_column :items, :accessory, :boolean, :default=>false
  end

  def self.down
  end
end
