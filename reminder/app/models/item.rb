class Item < ActiveRecord::Base
  has_many :assets, :dependent => :destroy
  belongs_to :category
  belongs_to :price_category
  belongs_to :currency
  
  has_many :tree_node_items, :dependent => :destroy
  has_and_belongs_to_many :tree_nodes, :join_table => :tree_nodes_items
  
  named_scope :popular, :order => 'view_show_count DESC'
  named_scope :by_holiday, lambda {|holiday| {:conditions => ["holidays.id = ?", holiday.id]}}
  
  named_scope :special, :order => 'view_show_count DESC, index_show_count DESC'
  
  named_scope :limit,    lambda {|limit| {:limit => limit}}
  
  named_scope :conditions, lambda { |*args| {:conditions => args} }
  named_scope :random_order, :order => 'rand()'
  named_scope :include, :include => [:tree_nodes, :holidays, :assets]

  
  validates_length_of :brief_description, :maximum => 110
  
  has_and_belongs_to_many :holidays, :join_table => "items_holidays"
  
  attr_accessor :files
  after_save :save_assets
  
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :link
  
  def Item.items_by_options(options)
    tags = options.collect{|o| o.tags}.flatten
    all_items = Item.find_tagged_with(tags.collect{|tag| tag.name})
    items = []
    all_items.each do |item|
      rate = 0
      options.each do |option|
        rate += (option.level * (item.tags & option.tags).size)
      end
      items << {:item => item, :rate => rate}
    end
    items
  end
  
  def pictures=(files)
    self.files = files
  end
  
  def tree_node_attrs=(attrs)
    attrs.each do |id|
      self.tree_node_items.build(:tree_node_id => id) unless self.tree_node_items.collect{|tni| tni.tree_node.id}.include?(id.to_i)
    end
  end
  
  def select!(current_user, tree_node_id)
    self.update_attribute(:selection_count, self.selection_count + 1)
    UserLog.create(:user => current_user, :action => UserLog::ITEM_SELECT, :item => self, :tree_node_id => tree_node_id)
  end
  
  def view_show!(current_user, tree_node_id)
    self.update_attribute(:view_show_count, self.view_show_count + 1)
    UserLog.create(:user => current_user, :action => UserLog::ITEM_CLICK, :item => self, :tree_node_id => tree_node_id)
  end
  
  def index_show!
    self.update_attribute(:index_show_count, self.index_show_count + 1)
  end
  
  def rate_for(tree_node, holiday)
    return 0 if self.tree_nodes.empty? or tree_node.nil?
    return 1 if self.tree_nodes.include?(tree_node)
    
    rate = 0
    self.tree_nodes.each do |tn|
      matches = tn.have_similar_nodes(tree_node).to_f
      total = tn.all_parent_stack.size.to_f
      p_rate = matches / total
      rate = p_rate if p_rate > rate
    end
    
    rate *= 2 if holiday and self.holidays.include?(holiday)
    
    rate
  end
  
  def link_host
    match = self.url.match(/http:\/\/(.+)\//)
    return match[1] if match
    self.link
  end
  
  def url
    return self.link if self.link.include?('http')
    return "http://#{self.link}"
  end
  
  private
  def save_assets
    self.files.each do |img|
      unless img.blank?
        self.assets.create(:uploaded_data=>img)
      end
    end unless self.files.nil?
  end
  
end
