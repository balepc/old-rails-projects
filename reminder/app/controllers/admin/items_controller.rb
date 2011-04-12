class Admin::ItemsController < Admin::AdminController

  def index
    @items = Item.find(:all, 
      :conditions => Condition.block { |c|
        c.and "link", 'LIKE', "%#{params[:item][:site]}%" if params[:item] and !params[:item][:site].blank?
      })
  end
  
  def edit
    @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
  end
  
  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      if save_go_back?
        redirect_to admin_items_path
      else
        redirect_to :action => 'edit'
      end
    else
      render :action => 'edit'
    end
  end
  
  def create
    @item = Item.new(params[:item])
    if @item.save
      if save_go_back?
        redirect_to admin_items_path
      else
        redirect_to :action => 'edit', :id => @item.id
      end
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to admin_items_path
  end
  
end
