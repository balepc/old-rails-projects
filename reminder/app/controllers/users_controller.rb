class UsersController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  

  # render new.rhtml
  def new
    @title = "Регистрация на нашем портале"
    @user = User.new
  end
 
  def create
    logout_keeping_session!
    @user = User.new(params[:user])
    success = @user && @user.save
    if success && @user.errors.empty?
            # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      @user.import_actions!(@virtial_user)
      @user.import_country!(@virtual_user)
      
      @virtual_user.destroy
      @virtual_user = nil
      
      self.current_user = @user # !! now logged in
      UserNotifier.deliver_signup(@user)
      redirect_back_or_default('/')
      flash[:notice] = "Thanks for signing up!  We're sending you an email with your activation code."
    else
      flash[:error]  = "We couldn't set up that account, sorry.  Please try again, or contact an admin (link is above)."
      render :action => 'new'
    end
  end
  
  def password_reminder
  end
  
  def remind
    user = User.find_by_email(params[:user][:email]) if params[:user]
    if user
      user.reset_password!
      flash[:notice] = 'Пароль был выслан на Ваш email'
      redirect_to '/login'
    else
      flash[:notice] = 'К сожалению мы не нашли пользователя с таким адресом'
      render :action => 'password_reminder'
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = 'Данные были успешно обновлены'
      redirect_to user_path(@user)
    else
      flash[:notice] = 'Ну удалось обновить данные'
      render :action => 'show'
    end
  end
  
end
