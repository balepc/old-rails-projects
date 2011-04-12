class Complectation < ActiveRecord::Base
  set_table_name :complectation
  
  belongs_to :item, :foreign_key => 'complectation_id', :class_name => 'Item'

end