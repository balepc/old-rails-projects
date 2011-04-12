class Admin::UsersController < Admin::AdminController
  
  def index
    @users = User.find(:all)
  end
  
end
