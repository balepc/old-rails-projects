class ItemsController < ApplicationController
  
  def show
    @item = Item.find(params[:id])

    raise ActiveRecord::RecordNotFound if (@item.hidden? and !logged_in?)
    @category = @item.category
    @categories = Category.roots
  end
  
end
