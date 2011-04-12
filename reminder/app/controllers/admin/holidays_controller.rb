class Admin::HolidaysController < Admin::AdminController
  
  def index
    @holidays = Holiday.find(:all)
  end
  
  def edit
    @holiday = Holiday.find(params[:id])
  end
  
  def new
    @holiday = Holiday.new
  end
  
  def update
    @holiday = Holiday.find(params[:id])
    if @holiday.update_attributes(params[:holiday])
      if save_go_back?
        redirect_to admin_holidays_path
      else
        redirect_to :action => 'edit'
      end
    else
      render :action => 'edit'
    end
  end
  
  def create
    @holiday = Holiday.new(params[:holiday])
    if @holiday.save
      if save_go_back?
        redirect_to admin_holidays_path
      else
        redirect_to :action => 'edit', :id => @holiday.id
      end
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @holiday = Holiday.find(params[:id])
    @holiday.destroy
    redirect_to admin_holidays_path
  end
  
  def remove_image
    @holiday = Holiday.find(params[:id])
    @holiday.reset_image!
    redirect_to edit_admin_holiday_path(@holiday)
  end
  
end
