class SearchController < ApplicationController

  def show
    if !params[:q].blank? and params[:q].size>3
      @categories = Category.by_contents(params[:q])
      @items = Item.by_contents(params[:q])
      @items = @items.reject{|i| i.hidden?} unless logged_in?
      @query = params[:q]
    else
      @query = ""
      flash[:message] = 'Уточните запрос.'
    end
  end

end
