class AddHolidayIdToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :holiday_id, :integer
    
    add_foreign_key(:items, :holiday_id, :holidays)
  end

  def self.down
    remove_column :items, :holiday_id
  end
end
