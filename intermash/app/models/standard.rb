class Standard < ActiveRecord::Base
  
  has_and_belongs_to_many :items
  
  belongs_to :standard, :foreign_key=>'group_id'
  has_many :standards, :foreign_key=>'group_id'

  validates_presence_of(:name, :message => "У стандарта должно быть название")

  translate_fields :name
  
  before_save :before_save

  def group=(value)
    self.is_group = value == "is_group" ? 1 : 0
  end
  
  def before_save
    if self.is_group?
      self.group_id = nil
    end
  end
  
  def self.groups
    Standard.find(:all, :conditions=>"is_group = 1")
  end
  
  def self.leaves
    Standard.find(:all, :conditions=>"is_group != 1")
  end
  
  def self.orphans
    Standard.find(:all, :conditions=>"group_id is null and is_group != 1")
  end

  def self.default_order
    Standard.find(:all, :order=>"is_group DESC, group_id, name")
  end
  
end
