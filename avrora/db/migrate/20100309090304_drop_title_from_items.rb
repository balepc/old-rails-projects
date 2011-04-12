class DropTitleFromItems < ActiveRecord::Migration
  def self.up
    remove_column(:items, :title)
  end

  def self.down
  end
end
