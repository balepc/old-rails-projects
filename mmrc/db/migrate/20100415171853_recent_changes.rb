class RecentChanges < ActiveRecord::Migration
  def self.up
    rename_column(:reports, :lv_arrival_port_eta, :lv_arrival_port_et)
    rename_column(:reports, :lv_departure_port_etd, :lv_departure_port_et)

    remove_column(:contacts, :full_name)



   add_column :reports, :lv_arrival_port_at, :timestamp
	add_column :reports, :lv_departure_port_at, :timestamp
	add_column :reports, :animals_description, :text
	add_column :reports, :cargo_description, :text
	add_column :reports, :lv_agent, :text
	add_column :reports, :crew_count, :integer, :default=>0
	add_column :reports, :crew_att_id, :integer
	add_column :reports, :passengers_count, :integer
	add_column :reports, :passengers_att_id, :integer




  end

  def self.down
  end
end
