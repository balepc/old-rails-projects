class Admin::StandardsController < Admin::ApplicationController

  before_filter :find_preloaded
  
  def index
    @standards = Standard.default_order
  end
  
  def new
    @standard = Standard.new
    base_locale!
  end
  
  def create
    @standard = Standard.new(params[:standard])
    if @standard.save
      if save_go_back?
        redirect_to admin_standards_path
      else
        redirect_to edit_admin_standard_path(@standard)
      end
    else
      base_locale!
      render :action => 'new'
    end
  end

  def destroy
    @standard = Standard.find(params[:id])
    @standard.destroy
    redirect_to admin_standards_path
  end
  
  
  def edit
    @standard = Standard.find(params[:id])
  end
  
  def update
    @standard = Standard.find(params[:id])
    if @standard.update_attributes(params[:standard])
      if save_go_back?
        redirect_to admin_standards_path
      else
        redirect_to :action => 'edit', :id => @standard.id
      end
    else
      render :action => 'edit'
    end
  end

  private
  def find_preloaded
    @groups = Standard.groups
  end
  
end
