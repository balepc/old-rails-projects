class TreeNode < ActiveRecord::Base
  belongs_to :option
  belongs_to :parent, :class_name => 'TreeNode', :foreign_key => 'parent_id'
  
  has_many :children, :class_name => 'TreeNode', :foreign_key => 'parent_id', :dependent => :destroy
  
  before_save :adjust_is_question
  
  def self.roots
    TreeNode.find(:all, :conditions => ["parent_id IS NULL"])
  end
  
  def self.root
    TreeNode.find(:first, :conditions => ["parent_id IS NULL"])
  end
  
  def full_name
    if self.parent 
      "#{self.parent.full_name} -> #{self.option.name}"
    else
      self.option.name
    end
  end
  
  def person
    all_options.detect{|opt| opt.indicate_person? }
  end
  
  def holiday
    all_options.detect{|opt| opt.indicate_reason? }
  end
  
  def all_options
    curr = [self.option]
    curr << self.parent.all_options if self.parent
    curr.flatten
  end
  
  def all_parent_stack
    curr = [self.id]
    curr << self.parent.all_parent_stack if self.parent
    curr.flatten
  end
  
  def all_child_stack
    curr = [self.id]
    self.children.each do |child|
      curr << child.all_child_stack
    end
    curr.flatten
  end
  
  def have_similar_nodes(node)
    (self.all_options && node.all_options).size
  end
  
  def parent_question
    return self.parent if self.parent and self.parent.is_question? and self.parent != TreeNode.root
  end
  
  def parent_answer
    return self.parent.parent if self.parent and self.parent.parent and not self.parent.parent.is_question?
  end
  
  def child_question
    q = self.children.detect{|c| c.is_question?}
    return q if q
  end
  
  private
  def adjust_is_question
    if self.parent.nil?
      self.is_question = true
    else
      if self.parent.is_question?
        self.is_question = false
      else
        self.is_question = true
      end
    end
    true
  end
  
end
