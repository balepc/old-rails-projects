class Currency < ActiveRecord::Base

  validates_presence_of(:name, :message => "Для валюты необходимо указать название")

  def self.order_by_name
    Currency.find(:all, :order=>"name")
  end

end
