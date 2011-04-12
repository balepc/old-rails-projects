class Admin::TagsController < Admin::AdminController
  
  def index
    @tags = Tag.find(:all)
  end
  
  def new
    @tag = Tag.new
  end
  
  def create
    @tag = Tag.new(params[:tag])
    if @tag.save
      if save_go_back?
        redirect_to admin_tags_path
      else
        redirect_to :action => 'edit', :id => @tag.id
      end
    else
      render :action => 'new'
    end
  end
  
  def edit
    @tag = Tag.find(params[:id])
  end
  
  def update
    @tag = Tag.find(params[:id])
    if @tag.update_attributes(params[:tag])
      if save_go_back?
        redirect_to admin_tags_path
      else
        redirect_to :action => 'edit'
      end
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to admin_tags_path
  end
  
end
