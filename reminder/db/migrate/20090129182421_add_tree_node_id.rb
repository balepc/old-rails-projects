class AddTreeNodeId < ActiveRecord::Migration
  def self.up
    create_table :tree_nodes_items, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.integer :tree_node_id
      t.integer :item_id
    end
    
    add_foreign_key :tree_nodes_items, :tree_node_id, :tree_nodes
    add_foreign_key :tree_nodes_items, :item_id, :items
  end

  def self.down
    drop_table :tree_nodes_items
  end
end
