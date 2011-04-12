class Asset < ActiveRecord::Base
  
  has_attachment :path_prefix => 'public/assets',
    :thumbnails => {:medium => '235x235', :big_square => '100x100', :square => "75x75"},
    :croppable_thumbnails => [:square, :big_square],
    :autocreate => true,
    :max_size => 100.megabytes
  
  before_validation :set_name
  before_create :set_default
  before_destroy :set_other_default
  belongs_to :item
  
  named_scope :default, :conditions => ["`assets`.default = ?", true]
  
#  validates_presence_of :name
  
  def default!
    item.assets.default.each{|asset| asset.update_attribute(:default, false)}
    self.update_attribute(:default, true)
  end
  
  private
  def set_name
    self.name ||= self.filename
  end
  
  def set_default
    self.default = true if item.assets.empty?
  end
  
  def set_other_default
    if self.default 
      asset = self.item.assets.find(:first, :conditions => ["NOT `assets`.id = ?", self.id])
      asset.default! if asset
    end
  end
  
end
