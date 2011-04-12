class Crew < ActiveRecord::Base
  set_table_name 'crew'

  belongs_to :report
  belongs_to :contact

  accepts_nested_attributes_for :contact
  
end
