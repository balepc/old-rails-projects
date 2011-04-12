# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.1.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')
require 'lib/core_ext'

Rails::Initializer.run do |config|
  config.load_paths += %W( #{RAILS_ROOT}/lib #{RAILS_ROOT}/lib/helpers )
  
  config.action_controller.session = {
    :session_key => '_reminder_session',
    :secret      => '3cebc91ea88e9a042659cab05fb00996bd970a50794e4ae3d1672aec2bfb465ea59506d893b7495c0f1a2338d7d144eec14e21db44b66adb2830413cd8291875'
  }
  
  config.gem 'RedCloth'
#  config.gem "thoughtbot-shoulda", :lib => "shoulda", :source => "http://gems.github.com"
  config.gem 'RubyInline', :lib => "inline"
  
  config.gem 'thoughtbot-shoulda', :lib => 'shoulda/rails', :source => "http://gems.github.com"
  
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :sendmail
  config.action_mailer.sendmail_settings = {
    :location => '/usr/sbin/sendmail',
    :arguments      => '-i -t'    
  }
end
