class Admin::PagesController < Admin::ApplicationController

  def index
    @pages = Page.all
  end

#  def new
#    @page = Page.new
#  end

#  def create
#    page = Page.new(params[:page])
#    if page.save
#      redirect_to admin_pages_path
#    else
#      render :action => 'new'
#    end
#  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to admin_pages_path
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      if save_go_back?
        redirect_to admin_pages_path
      else
        redirect_to :action => 'edit', :id => @page.id
      end
    else
      render :action => 'edit'
    end
  end

end
