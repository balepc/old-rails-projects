class Admin::CategoriesController < Admin::ApplicationController
  
  def index
    @categories = Category.find(:all, :order => 'categories.parent_id, categories.name')
  end
  
  def new
    @category = Category.new
    base_locale!
  end
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      if save_go_back?
        redirect_to admin_categories_path
      else
        redirect_to edit_admin_category_path(@category)
      end
    else
      base_locale!
      render :action => 'new'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to admin_categories_path
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
    
    if @category.update_attributes(params[:category])
      if save_go_back?
        redirect_to admin_categories_path
      else
        redirect_to :action => 'edit', :id => @category.id
      end
    else
      render :action => 'edit'
    end
  end
  
end