class UserLog < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  belongs_to :tree_node
  
  ITEM_CLICK = 1
  ITEM_SELECT = 2
  
end
