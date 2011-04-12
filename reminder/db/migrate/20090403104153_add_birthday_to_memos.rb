class AddBirthdayToMemos < ActiveRecord::Migration
  def self.up
    add_column :memos, :is_birthday, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :memos, :is_birthday
  end
end
