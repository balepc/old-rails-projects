class Page < ActiveRecord::Base

  translate_fields :body

  TYPE_WELCOME = 0
  TYPE_ABOUT = 1
  TYPE_CONTACTS = 2

  def self.welcome_page
    Page.find(:first, :conditions => "page_type = #{TYPE_WELCOME}").body
  end

  def self.about_page
    Page.find(:first, :conditions => "page_type = #{TYPE_ABOUT}").body
  end

  def self.contacts_page
    Page.find(:first, :conditions => "page_type = #{TYPE_CONTACTS}").body
  end
end
