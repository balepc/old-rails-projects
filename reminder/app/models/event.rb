class Event
  
  attr_accessor :date, :title, :unique_id
    
  def initialize(date, title, id)
    self.date = date
    self.title = title
    self.unique_id = id
  end
  
  def Event.instance(unique_id)
    Event.new(nil, '', unique_id)
  end
  
  def Event.upcoming_events(date, user)
    hash = (Memo.series(date, user, 20) + Holiday.series(date)).sort{|a,b| (a[:date] <=> b[:date]) or (a[:id]<=>b[:id])}
    hash.collect{|h| Event.new(h[:date], h[:title], h[:id])}
  end
  
  def to_param
    self.unique_id
  end
  
  def memo
    if self.unique_id.include?('Memo')
      Memo.find(self.unique_id.gsub("Memo_",'').to_i)
    end
  end
  
  def holiday
    if self.unique_id.include?('Holiday')
      Holiday.find(self.unique_id.gsub("Holiday_",'').to_i)
    end
  end
  
end
