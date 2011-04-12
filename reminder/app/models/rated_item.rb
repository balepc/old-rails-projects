class RatedItem
  
  attr_accessor :rate
  attr_accessor :item
  
  def initialize(item, rate)
    self.item = item
    self.rate = rate
  end
  
end