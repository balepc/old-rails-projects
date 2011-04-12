class AddAdminToAdmins < ActiveRecord::Migration
  def self.up
    add_column :admins, :admin, :boolean, :default=>false

    Admin::Admin.all.each{|a| a.update_attribute(:admin, true)}
  end

  def self.down
    remove_column :admins, :admin
  end
end
