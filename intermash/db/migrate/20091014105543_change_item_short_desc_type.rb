class ChangeItemShortDescType < ActiveRecord::Migration
  def self.up
    remove_column :items, :shortdesc
    add_column :items, :shortdesc, :string
  end

  def self.down
    remove_column :items, :shortdesc
    add_column :items, :shortdesc, :text
  end
end
