class Admin::SessionsController < ApplicationController
  include AdminAuthenticatedSystem
  layout 'admin/layouts/application'

  def create
    logout_keeping_session!
    admin = Admin::Admin.authenticate(params[:login], params[:password])
    if admin and admin.admin?
      self.current_user = admin
      redirect_back_or_default('/admin')
    else
      flash[:notice] = "Пароль или логин не совпадают"
      @login       = params[:login]
      @remember_me = params[:remember_me]
      render :action => 'new'
    end
  end

  def destroy
    logout_killing_session!
    redirect_to('/admin')
  end

  def site_name
    'avrora.com'
  end

end
