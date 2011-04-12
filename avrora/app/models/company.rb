class Company < ActiveRecord::Base

  has_many :items

  translate_fields :name
  validates_presence_of(:name, :message => "У компании должно быть название")

  def self.order_by_name
    Company.find(:all, :order=>"name")
  end

end
