class Tag < ActiveRecord::Base
  include ActionController::UrlWriter

  
  TAG_STYLE_SMALL  = -1
  TAG_STYLE_NORMAL = 0
  TAG_STYLE_BIG    = 1
  TAG_STYLE_HUGE   = 2
  
  validates_presence_of :name
  validates_presence_of :link
  validates_presence_of :style
  
  validates_format_of :link, :with => /\/[a-zA-Z0-9_\/]+/
  
  attr_accessor :holiday_id, :tree_node_id
  
  before_validation :generate_link
  
  def self.tag_styles
    {"Small" => TAG_STYLE_SMALL, "Normal" => TAG_STYLE_NORMAL, "Big" => TAG_STYLE_BIG, "Huge" => TAG_STYLE_HUGE}
  end
  
  private
  def generate_link
    if !@holiday_id.blank? and !@tree_node_id.blank?
      self.link = items_path(:tree_node_id => @tree_node_id, :holiday_id => @holiday_id)
    elsif !@holiday_id.blank?
      self.link = holiday_path(@holiday_id)
    elsif !@tree_node_id.blank?
      self.link = items_path(:tree_node_id => @tree_node_id)
    end
  end
  
end
