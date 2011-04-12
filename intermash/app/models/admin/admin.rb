class Admin::Admin < ActiveRecord::Base
  include Authentication
  include Authentication::ByPassword
  #include PassGenerator

  validates_presence_of     :login
  validates_length_of       :login,    :within => 3..40
  validates_uniqueness_of   :login
  validates_format_of       :login,    :with => Authentication.login_regex, :message => Authentication.bad_login_message

  validates_presence_of     :email
  validates_length_of       :email,    :within => 6..100 #r@a.wk
  validates_uniqueness_of   :email
  validates_format_of       :email,    :with => Authentication.email_regex, :message => Authentication.bad_email_message

#  validates_presence_of :role

  attr_accessible :login, :email, :password, :password_confirmation, :role_id, :admin

  named_scope :real,   {:conditions=>["role_id > 0"]}

#  belongs_to :role, :class_name=>'Admin::Role'

  def self.authenticate(login, password)
    return nil if login.blank? || password.blank?
    u = Admin::Admin.find_by_login(login.downcase) # need to get the salt
    u && u.authenticated?(password) ? u : nil
  end

  def login=(value)
    write_attribute :login, (value ? value.downcase : nil)
  end

  def email=(value)
    write_attribute :email, (value ? value.downcase : nil)
  end

  def superadmin?
    role_id == -1
  end

  def forget_me
    # no cookies auth
  end

end
