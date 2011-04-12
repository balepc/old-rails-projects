class Admin::OptionsController < Admin::AdminController

  def index
    @options = Option.find :all
  end
  
  def new
    @option = Option.new
  end
  
  def create
    @option = Option.create(params[:option])
    if @option.save
      if save_go_back?
        redirect_to admin_options_path
      else
        redirect_to :action => 'edit', :id => @option.id
      end
    else
      render :action => 'new'
    end
  end
  
  def edit
    @option = Option.find(params[:id])
  end
  
  def update
    @option = Option.find(params[:id])
    if @option.update_attributes(params[:option])
      if save_go_back?
        redirect_to admin_options_path
      else
        redirect_to :action => 'edit'
      end
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @option = Option.find(params[:id])
    @option.destroy
    redirect_to admin_options_path
  end
  
end
