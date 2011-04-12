class Admin::UsersController < Admin::ApplicationController

  def index
    @users = Admin::Admin.all
  end

  def new
    @user = Admin::Admin.new
    base_locale!
  end

  def create
    @user = Admin::Admin.new(params[:user])
    if @user.save
      if save_go_back?
        redirect_to admin_users_path
      else
        redirect_to edit_admin_user_path(@user)
      end
    else
      base_locale!
      render :action => 'new'
    end
  end

  def destroy
    @user = Admin::Admin.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end

  def edit
    @user = Admin::Admin.find(params[:id])
  end

  def update    
    @user = Admin::Admin.find(params[:id])
    if @user.update_attributes(params[:user])      
      if save_go_back?
        redirect_to admin_users_path
      else
        redirect_to :action => 'edit', :id => @user.id
      end
    else
      render :action => 'edit'
    end
  end

end
