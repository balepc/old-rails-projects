module ItemsHelper
    
  def latest_items(num)
    # why can't move to model?
    # ToDo: The model is proper place for that. Pleas moveit
    if logged_in?
      Item.find(:all, :order=>'created_at desc', :limit=>num)
    else
      Item.find(:all, :order=>'created_at desc', :limit=>num, :conditions=>{:hidden=>false})
    end
  end

  def display_company(item)
    if item.company
      if item.company.www.blank?
        item.company.name
      else
        "<a href='http://#{item.company.www}' target='_blank'>#{item.company.name}</a>"
      end
    end
  end
  
end
