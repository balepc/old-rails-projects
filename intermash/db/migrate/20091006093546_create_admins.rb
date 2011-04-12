class CreateAdmins < ActiveRecord::Migration
  def self.up
    create_table :admins do |t|
      t.string :login, :null=>false
      t.string :email, :null=>false
      t.string :crypted_password, :null=>false
      t.string :salt, :null=>false

      t.boolean :active, :default=>true
      t.integer :role_id

      t.timestamps
    end
  end

  def self.down
    drop_table :admins
  end
end
