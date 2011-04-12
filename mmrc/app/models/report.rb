class Report < ActiveRecord::Base
  
  belongs_to :vessel

  belongs_to :lv_arrival_port, :class_name => 'Port'
  belongs_to :lv_departure_port, :class_name => 'Port'

  belongs_to :last_port, :class_name => 'Port'
  belongs_to :next_port, :class_name => 'Port'

  has_many   :passengers
  has_many   :crew, :class_name=>'Crew'

  has_and_belongs_to_many :previous_ports, :join_table => 'previous_ports', :class_name=>'Port', :association_foreign_key => 'port_id'
  

#  accepts_nested_attributes_for :previous_ports, :allow_destroy => true
#  accepts_nested_attributes_for :previous_ports, :reject_if => lambda { |a| a[:id].blank? }, :allow_destroy => true




  validates_presence_of :vessel
  validates_presence_of :report_period

#  validates_presence_of :lv_arrival_port
#  validates_presence_of :lv_departure_port

  def vessel_imon=(imon)
    self.vessel = Vessel.find_by_imon(imon)
  end
  def vessel_imon
    self.vessel.imon if self.vessel
  end


end
