class AddDescriptionToMemos < ActiveRecord::Migration
  def self.up
    add_column :memos, :description, :text
  end

  def self.down
    remove_column :memos, :description
  end
end
