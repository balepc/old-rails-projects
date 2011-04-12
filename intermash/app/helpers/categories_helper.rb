module CategoriesHelper

  def show_category?(category, company_id)
    return true if company_id.nil?
    items = Item.by_category(category)
    item_company_ids = items.collect{|i| i.company_id}.uniq
    item_company_ids.include?(company_id)
  end

end
