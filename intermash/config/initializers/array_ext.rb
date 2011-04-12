class Array

  def chunk(pieces=2)
    len = self.length;
    mid = (len/pieces)
    chunks = []
    start = 0
    1.upto(pieces) do |i|
      last = start+mid
      last = last-1 unless len%pieces >= i
      chunks << self[start..last] || []
      start = last+1
    end
    chunks
  end

  def last?(object)
    self[size-1] == object
  end

  def first?(object)
    self[0] == object
  end

  def remove(object)
    self.delete(object)
    self
  end

  def after(element)
    if (index = self.index(element))
      self[index+1]
    end
  end

  def before(element)
    if (index = self.index(element) and index>0)
      self[index-1]
    end
  end

end