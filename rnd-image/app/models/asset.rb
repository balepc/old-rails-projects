class Asset < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "1000x570>", :thumb=> "100x100!" }

end