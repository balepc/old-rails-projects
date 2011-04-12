class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  include AuthenticatedSystem
  
  protect_from_forgery # :secret => 'b6d57fade71e69692997793180ceba45'
  
  before_filter :detect_user
  
  def site_name
    "Reminder.lv"
  end
  
  def authenticate
    redirect_to '/' unless current_user && current_user.admin?
  end 
  
  private
  def detect_user
    unless current_user
      @virtual_user ||= VirtualUser.get(request.remote_ip)
    end
  end
  
end
