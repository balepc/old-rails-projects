class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  
  validates_uniqueness_of :item_id, :scope => :user_id
  validates_presence_of :user
  validates_presence_of :item
  
end