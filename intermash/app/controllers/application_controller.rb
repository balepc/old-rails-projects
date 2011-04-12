# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  include AdminAuthenticatedSystem

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  before_filter :set_locale

  def set_locale
    if cookies[:locale]
      I18n.locale = cookies[:locale]
    else
      I18n.locale = I18n.default_locale
    end
  end
  
end
