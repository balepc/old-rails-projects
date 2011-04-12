class CreateVirtualUsers < ActiveRecord::Migration
  def self.up
    create_table :virtual_users do |t|
      t.string :ip_address
      t.timestamps
    end
  end

  def self.down
    drop_table :virtual_users
  end
end
