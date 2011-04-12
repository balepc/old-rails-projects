class Vessel < ActiveRecord::Base

  belongs_to :owner, :class_name => "Possesor"
  belongs_to :manager, :class_name => "Possesor"
  
  validates_presence_of :mmsi
  validates_presence_of :imon
  validates_presence_of :ship_name

#  validates_presence_of :manager
#  validates_presence_of :owner

  validates_uniqueness_of :mmsi
  validates_uniqueness_of :ship_name

  accepts_nested_attributes_for :owner
  accepts_nested_attributes_for :manager

  validates_format_of :imon, :with=>/^[0-9]{7}$/
#  validates_length_of :imon, :is => 7
#  validates_numericality_of :imon

  TYPES = ['Passenger', 'Fishing', 'Cargo', 'Tanker', 'Cem Tanker', 'Container',
    'Sail Boat', 'Research', 'Navy', 'Military', 'Tug', 'Bulk Carrier', 'Patrol',
    'Yacht', 'Icebreaker', 'Fish Carrier', 'Gas Carrier', 'Oil Carrier', 'Other']





  def validate
    validate_imon_number
    validate_other_field
  end



  private
  def validate_imon_number
    self.errors.add(:imon, :wrong_format) if self.imon.to_s.chars.inject(0){|sum, ch| sum += ch.to_i} > 100
  end

  def validate_other_field
  end
  

end
