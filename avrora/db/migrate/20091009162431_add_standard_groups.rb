class AddStandardGroups < ActiveRecord::Migration
  def self.up
    add_column :standards, :is_group, :boolean, :default=>false, :null=>false
    add_column :standards, :group_id, :integer
  end

  def self.down
    remove_column :standards, :group_id
    remove_column :standards, :is_group
  end
end
