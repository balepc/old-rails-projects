class AddCountToComplectation < ActiveRecord::Migration
  def self.up
    add_column :accessories, :count, :integer, :default=>1
    add_column :complectation, :count, :integer, :default=>1
  end

  def self.down
  end
end
