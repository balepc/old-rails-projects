class AddSelectionCountToOption < ActiveRecord::Migration
  
  def self.up
    add_column :options, :selection_count, :integer, :null => false, :default => 0
    add_column :items, :selection_count, :integer, :null => false, :default => 0
  end

  def self.down
    remove_column :options, :selection_count
    remove_column :items, :selection_count
  end
  
end
