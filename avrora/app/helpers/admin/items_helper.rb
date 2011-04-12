module Admin::ItemsHelper
  
  def add_attribute_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :custom_attributes, :partial => 'complect'
      page.call 'itemsChanged'
    end
  end
  def add_accessories_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :custom_accessories, :partial => 'accessories', :locals=>{:complect=>nil}
      page.call 'accessoriesChanged'
    end
  end

  def items_for_complectation(item)
    if item.new_record?
      return Item.all.to_a
    else
      return Item.find(:all, :conditions=>["id != ?", item.id])
    end
  end

  def filter_applied?
    false
  end

end
