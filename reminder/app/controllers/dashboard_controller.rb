class DashboardController < ApplicationController
  before_filter :load_category
  before_filter :load_tree_node, :only => [:index, :show]
  before_filter :load_items
  before_filter :load_tags
  
  @@recommendation = Recommendation.new
  
  OTHER_ITEMS_PER_PAGE = 10
  
  def show
    @current_date ||= Date.today
  end
  
  def reset
    session[:tree_node_id] = nil
    redirect_to :action => 'show'
  end
  
  private
  
  def load_category
    @category = Category.find(params[:category_id]) unless params[:category_id].blank?
    @price_category = PriceCategory.find(params[:price_category_id]) unless params[:price_category_id].blank?
  end

  def load_tree_node
    if params[:tree_node_id]
      session[:tree_node_id] = params[:tree_node_id]
      @tree_node = TreeNode.find(params[:tree_node_id])
    elsif session[:tree_node_id]
      @tree_node = TreeNode.find(session[:tree_node_id])
    end
  end
  
  def load_items
    @items = @@recommendation.get_all(@tree_node, @holiday, 
      @category, @price_category).
      paginate(:per_page => 8, :page => params[:page])
    
    @categories = @items.collect{|i| i[:item].category }.uniq.compact
    @price_categories = @items.collect{|i| i[:item].price_category }.uniq.compact
  end
  
  def load_tags
    @tags = Tag.find(:all)
  end

end
