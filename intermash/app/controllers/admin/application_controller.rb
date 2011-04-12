# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class Admin::ApplicationController < ActionController::Base

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  include ApplicationHelper
  include Admin::ApplicationHelper
  include AdminAuthenticatedSystem

  before_filter :login_required
  before_filter :admin_required
  before_filter :set_locale

  layout 'admin/layouts/application'

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def title
  end

  def site_name
    'intermash.org'
  end

  def set_locale
    if cookies[:admin_locale]
      I18n.locale = cookies[:admin_locale]
    else
      I18n.locale = I18n.default_locale
    end
  end

  def change_locale
    redirect_to :back
  end
  
  protected
  def preset_order
    if params[:field]
      if session[:field] == params[:field]
        set_order("#{column_name(params[:field])} #{order_type == :asc ? "DESC" : "ASC"}")
      else
        set_order("#{column_name(params[:field] || session[:field])} DESC")
      end
      session[:field] = params[:field]
    end
  end

  private
  def set_scope_key
    session[:scope_key] = "#{self.controller_name}_#{self.action_name}"
  end


  def admin_required
    redirect_to '/' unless current_user.admin?
  end

end
