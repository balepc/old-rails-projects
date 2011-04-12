class AddRecurringToMemo < ActiveRecord::Migration
  def self.up
    add_column :memos, :recurring, :boolean, :default => false, :null => false
    add_column :memos, :filename, :string
    add_column :memos, :content_type, :string
    add_column :memos, :size, :string
    
    
    remove_foreign_key(:memos, :holiday_id)
    remove_column :memos, :holiday_id
  end

  def self.down
    remove_column :memos, :filename
    remove_column :memos, :recurring
  end
end
