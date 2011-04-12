class Passenger < ActiveRecord::Base
  belongs_to :report
  belongs_to :contact

  accepts_nested_attributes_for :contact

end
