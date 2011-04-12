class SessionsController < ApplicationController
  include AdminAuthenticatedSystem

  def new
  end

  def create
    logout_keeping_session!
    admin = Admin::Admin.authenticate(params[:login], params[:password])
    if admin
      self.current_user = admin
      if admin.admin?
        redirect_to '/admin'
      else
        redirect_to '/'
      end
    else
      flash[:notice] = "Couldn't log in your to system. Please check login and password"
      @login       = params[:login]
      @remember_me = params[:remember_me]
      render :action => 'new'
    end
  end

  def destroy
    logout_killing_session!
    redirect_to('/')
  end

end
