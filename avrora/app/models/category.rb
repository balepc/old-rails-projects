class Category < ActiveRecord::Base
  acts_as_nested_set
  
  validates_presence_of(:name, :message => "У категории должно быть название")
  
  has_many :items

  translate_fields [:name, :description]

  named_scope :by_contents, lambda {|query| {:conditions=>["name LIKE ? OR description LIKE ?", "%#{query}%", "%#{query}%"]}}

  def self.category_children_for_select
    Category.find(:all, :conditions=>'parent_id is not null').map{|c| [c.full_name, c.id]}.sort_by{|m| m[0]}
  end

  def full_name
    self_and_ancestors.collect {|c| c.name}.join(" - ")
  end
  
end
