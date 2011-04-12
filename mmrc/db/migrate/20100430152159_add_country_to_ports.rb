class AddCountryToPorts < ActiveRecord::Migration
  def self.up
    add_column :ports, :country, :string
  end

  def self.down
    remove_column :ports, :country
  end
end
