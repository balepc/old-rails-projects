class Admin::StatisticsController < Admin::AdminController
  
  def items
    @items = Item.find(:all, :order => 'selection_count DESC, view_show_count DESC,index_show_count DESC')
  end

  def selection
    @options = Option.find(:all, :order => 'selection_count DESC')
  end

end
