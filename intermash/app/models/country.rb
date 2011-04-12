class Country < ActiveRecord::Base

  has_many :items
  
  translate_fields :name
  validates_presence_of(:name, :message => "У страны должно быть название")

  def self.order_by_name
    Country.find(:all, :order=>"name")
  end

end