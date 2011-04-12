class PortsStructure < ActiveRecord::Migration
  def self.up
    remove_column :ports, :locode

    add_column :ports, :code, :string, :limit=>5
    add_column :ports, :name, :string
    add_column :ports, :name_original, :string

    add_column :ports, :longitude, :string
    add_column :ports, :latitude, :string


  end

  def self.down
  end
end
