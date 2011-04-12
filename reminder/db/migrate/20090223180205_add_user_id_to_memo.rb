class AddUserIdToMemo < ActiveRecord::Migration
  def self.up
    add_column :memos, :user_id, :integer
    add_foreign_key :memos, :user_id, :users
  end

  def self.down
    remove_column :memos, :user_id
  end
end
