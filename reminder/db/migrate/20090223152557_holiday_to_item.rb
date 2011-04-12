class HolidayToItem < ActiveRecord::Migration
  def self.up
    execute "alter table items drop foreign key fk_items_holiday_id"
    remove_column :items, :holiday_id
    
    create_table :items_holidays, :id => false do |t|
      t.integer :item_id, :null => false
      t.integer :holiday_id, :null => false
    end
  end

  def self.down
    drop_table :items_holidays
    add_column :items, :holiday_id, :integer
  end
end
