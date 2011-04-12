class AddHolidayDateToHoliday < ActiveRecord::Migration
  def self.up
    add_column :holidays, :holiday_date, :date
  end

  def self.down
    remove_column :holidays, :holiday_date
  end
end
