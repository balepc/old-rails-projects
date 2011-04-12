class AddAdmins < ActiveRecord::Migration
  def self.up
    Admin::Admin.create(:login=>'admin', :password=>'avrora123', :password_confirmation=>'avrora123', :email=>'a@a.lv')
  end

  def self.down
  end
end
