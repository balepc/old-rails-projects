class AddReportToReports < ActiveRecord::Migration
  def self.up
    add_column :reports, :report_period, :string
  end

  def self.down
    remove_column :reports, :report_period
  end
end
