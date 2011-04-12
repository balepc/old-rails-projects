class AddVesselData < ActiveRecord::Migration
  def self.up
    populate_seed
  end

  def self.down
  end

  def self.populate_seed
    file = File.new(File.join(RAILS_ROOT, "db/migrate/", "MARINE_TRAFFIC_DUMP.csv"))    

    file.read.each_line do |vessel|
      ship_name, year, size, gross_tonnage, call_sign, imon, mmsi   = vessel.chomp.split(",")
      Vessel.create(:ship_name => ship_name.strip, :gross_tonnage => gross_tonnage, :call_sign => call_sign, :imon => imon, :mmsi => mmsi, :owner_id=>0, :manager_id=>0, :ship_flag=>"LV")
    end

    file.close   
  end
  
end
