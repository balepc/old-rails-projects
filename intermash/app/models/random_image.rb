class RandomImage < ActiveRecord::Base

  has_attached_file :image, :styles => { :normal => "304x208>", :small => "101x69>" }

  #nice
  #named_scope :random, lambda { |random| {:order => "rand()", :limit => random }}

  def self.random
    RandomImage.find(:first, :order => "rand()")
  end

end
