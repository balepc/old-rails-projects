class Holiday < ActiveRecord::Base
   
  named_scope :after, lambda {|date| {:conditions => ["holiday_date > ?", date] }}
  named_scope :limit, lambda {|limit| {:limit => limit}}
  
  validates_presence_of :title
  validates_presence_of :day
  validates_presence_of :month
  
  has_and_belongs_to_many :items, :join_table => 'items_holidays'
  
  has_attachment :path_prefix => 'public/holidays',
    :thumbnails => {:standart => '68x57'},
    :croppable_thumbnails => [:standart],
    :autocreate => true,
    :max_size => 100.megabytes
  
  def Holiday.series(date)
    h = Holiday.find(:all, :order => "month, day")
    series = []
    Date.current.year.upto(Date.current.year+5) do |year|
      h.each do |holiday|
        series << {:date=>Date.new(year, holiday.month, holiday.day), :title=>holiday.title, :id => "Holiday_#{holiday.id}"}
      end
    end
    series.reject{|s| s[:date] < date}
  end
  
  def left()
    (Date.new(Date.today.year, self.month, self.day) - Date.today).to_i
  end
  
  def date
    Date.new(Date.today.year, self.month, self.day)
  end
  
  def reset_image!
    self.remove_files
    self.update_attribute(:filename, nil)
    self.update_attribute(:content_type, nil)
  end
  
end
