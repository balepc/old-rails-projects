class Admin::VirtualUsersController < Admin::AdminController
  
  def index
    @users = VirtualUser.find(:all)
  end
  
end
