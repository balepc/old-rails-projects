class Memo < ActiveRecord::Base
  belongs_to :holiday
  belongs_to :user

  has_attachment :path_prefix => 'public/memos',
    :thumbnails => {:standart => '70x70'},
    :croppable_thumbnails => [:standart],
    :autocreate => true,
    :max_size => 10.megabytes
  
  named_scope :after, lambda {|date| {:conditions => ["memo_date > ?", date], :order => 'memo_date' }}
  named_scope :limit, lambda {|limit| {:limit => limit}}
  named_scope :birthdates, {:conditions => ["is_birthday = ?", true]}
  
  defaults :memo_date => Date.today+1
  
  validates_presence_of :title
  validates_presence_of :user
  
  def Memo.series(date, user, limit)
    return [] unless user
    m = Memo.find(:all, :conditions=>["memo_date > ? AND user_id = ?", date, user.id], :limit=>limit, :order => 'memo_date')
    m.collect {|memo| {:date=>Date.new(memo.memo_date.year, memo.memo_date.month, memo.memo_date.day), :title => memo.title, :id => "Memo_#{memo.id}"}}
  end
  
  def date
    self.memo_date
  end
  
  def self.todays
    Memo.find_by_sql("SELECT * FROM memos WHERE DAY(memos.memo_date) = #{Date.today.day} AND MONTH(memos.memo_date) = #{Date.today.month} AND (YEAR(memos.memo_date) = #{Date.today.year} OR memos.recurring = 1)")
  end
  
end
