class TreeNodeItem < ActiveRecord::Base
  set_table_name 'tree_nodes_items'
  
  belongs_to :item
  belongs_to :tree_node
  
end
