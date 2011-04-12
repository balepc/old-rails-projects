class RemoveNonNullFieldsFromReports < ActiveRecord::Migration
  def self.up
    change_column :reports, :report_time, :timestamp, :null=>true

    change_column :reports, :lv_arrival_port_id, :integer, :null=>true
    change_column :reports, :lv_departure_port_id, :integer, :null=>true
    change_column :reports, :last_port_id, :integer, :null=>true

    change_column :reports, :cert_issue_dt, :timestamp, :null=>true
    change_column :reports, :cert_valid_dt, :timestamp, :null=>true


    change_column :reports, :cert_issue_authority, :string, :null=>true




  end

  def self.down
  end
end
