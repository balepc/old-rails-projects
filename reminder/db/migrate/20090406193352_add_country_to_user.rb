class AddCountryToUser < ActiveRecord::Migration
  def self.up
    add_column :virtual_users, :country, :string    
    add_column :users, :country, :string
  end

  def self.down
  end
end
