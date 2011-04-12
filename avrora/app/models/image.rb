class Image < ActiveRecord::Base
  
  belongs_to :item
  
  has_attached_file :image_data, :styles => { :normal => "177x177>", :medium => "95x95>", :tiny => "66x66>" }

end
