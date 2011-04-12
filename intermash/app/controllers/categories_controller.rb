class CategoriesController < ApplicationController
  include CategoriesHelper
  
  def index
    @categories = Category.roots(:include=>[:chilren])
    @company = Company.find(params[:company_id]) if params[:company_id]
    @company_id = @company.id if @company
    
    @categories = @categories.reject{|c| !show_category?(c, @company_id)} if @company
  end
  
  def show
    @categories = Category.roots
    @category = Category.find(params[:id])
    scope = Item.by_category(@category)
    scope = scope.by_contents(params[:q]) unless params[:q].blank?
    @items = scope.to_a
    @items = @items.reject{|i| i.hidden?} unless logged_in?
  end  
  
end
