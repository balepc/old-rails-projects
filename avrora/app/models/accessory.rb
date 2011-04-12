class Accessory < ActiveRecord::Base
  set_table_name :accessories

  belongs_to :item, :foreign_key => 'accessory_id', :class_name => 'Item'

end