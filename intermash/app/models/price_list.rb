class PriceList < ActiveRecord::Base

  has_attached_file :pricelist

  validates_presence_of :pricelist_file_name
  validates_presence_of :name, :message => "У прайслиста должно быть название"

end
