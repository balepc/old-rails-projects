class Recommendation
  
  def get_all(tree_node, holiday, category, price_category)
    items = []
    items << admin_defined(tree_node, holiday, category, price_category)
    
    res = []
    items.flatten.each{|item| res << {:item => item, :rate => item.rate_for(tree_node, holiday) } }
    res
  end
  
  def admin_defined(tree_node, holiday, category, price_category)
    child_ids = tree_node.all_child_stack if tree_node
    
    scope = Item.scoped({})
    scope = scope.include
    scope = scope.conditions "items.category_id = ?", category.id if category
    scope = scope.conditions "items.price_category_id = ?", price_category.id if price_category
    
    scope = scope.conditions "holidays.id = ?", holiday.id if holiday
    scope = scope.conditions "tree_nodes.id =? OR tree_nodes.id IN (?)", tree_node.id, child_ids if tree_node
    
    scope
  end
  
  def others_bf(tree_node)
  end
  
  def others_pf(tree_node)
  end
  
  def related_items(item1, item2)
  end
  
end