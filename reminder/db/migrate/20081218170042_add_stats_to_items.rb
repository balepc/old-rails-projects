class AddStatsToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :view_show_count, :integer, :null => false, :default => 0
    add_column :items, :index_show_count, :integer, :null => false, :default => 0
  end

  def self.down
    remove_column :items, :view_show_count
    remove_column :items, :index_show_count
  end
end
