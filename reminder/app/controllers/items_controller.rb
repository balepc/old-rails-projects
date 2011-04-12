class ItemsController < ApplicationController
  
  OTHER_ITEMS_PER_PAGE = 10
  
  @@recommendation = Recommendation.new
  
  before_filter :load_category, :only => [:index]
  
  def show
    @item = Item.find(params[:id])
    @item.view_show!(current_user, session[:tree_node_id])
    
    @other_items = Item.paginate(:all, 
      :include => [:assets], :page => params[:page], :per_page => OTHER_ITEMS_PER_PAGE,
      :order => 'current_date()')
    
    @title = @item.seo_title unless @item.seo_title.blank?
    @title ||= @item.title
    
    @meta_description = @item.seo_description unless @item.seo_description.blank?
    @meta_description ||= @item.brief_description
    @meta_keywords = @item.seo_keywords unless @item.seo_keywords.blank?
  end
  
  def select
    @item = Item.find_by_id(params[:id])
    @item.select!(current_user, session[:tree_node_id])
    redirect_to @item.url
  end
  
  def index
    @tree_node = TreeNode.find(params[:tree_node_id]) if params[:tree_node_id]
    @holiday = Holiday.find(params[:holiday_id]) if params[:holiday_id]
    
    if @tree_node and @holiday
      @title = "Подходящие подарки #{@tree_node.person.name.downcase if @tree_node and @tree_node.person} #{"на #{@holiday.title}"}"
    elsif @tree_node
      @title = "Подходящие подарки #{@tree_node.person.name.downcase if @tree_node and @tree_node.person}"
    elsif @holiday
      @title = "Подходящие подарки #{"на #{@holiday.title}"}"
    else
      @title = "Наиболее подходящие подарки"
    end
        
    @items = @@recommendation.get_all(@tree_node, @holiday)
    
    @categories = @items.collect{|i| i[:item].category }.uniq.compact
    @price_categories = @items.collect{|i| i[:item].price_category }.uniq.compact
  end
  
  def other
    page = params[:page] || session[:page]
    session[:page] = params[:page] if params[:page]
    @other_items = Item.paginate(:all, 
      :include => [:assets], :page => page, :per_page => OTHER_ITEMS_PER_PAGE,
      :order => 'current_date()')
    params['other_class'] ||= 'other-gift'
    render :partial => 'items/other_items'
  end
  
  def favorite
    @items = current_user.items
  end
  
  private
  def load_category
    @category = Category.find(params[:category_id]) unless params[:category_id].blank?
    @price_category = PriceCategory.find(params[:price_category_id]) unless params[:price_category_id].blank?
  end
  
end
