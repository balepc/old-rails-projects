class DropAttributeName < ActiveRecord::Migration
  def self.up
    remove_column :attributes, :name
    end

  def self.down
    add_column :attributes, :name, :string
  end
end
