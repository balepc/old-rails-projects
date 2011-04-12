class AddIdColumnsToComplectation < ActiveRecord::Migration
  def self.up
    add_column :complectation, :id, :primary_key
    add_column :accessories, :id, :primary_key
  end

  def self.down
  end
end
