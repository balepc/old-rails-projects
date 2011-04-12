class CollectionHash < Hash

  def store(key, value)
    value = self[key].merge(value) if include?(key)
    super(key, value)
  end

  def merge!(hash)
    hash.each do |k,v|
      if self[k]
        self[k].merge!(hash[k])
      else
        self.store(k, v)
      end
    end
  end

end