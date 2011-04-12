require File.dirname(__FILE__) + '/../spec_helper'

describe Event do
  before(:each) do
    Memo.destroy_all 
  end
  
  describe 'upcoming_dates' do 
    it "should return ordered dates from memo and holidy" do
      Memo.create(:title => '1', :memo_date => Date.new(2008, 10, 12))
      Memo.create(:title => '2', :memo_date => Date.new(2008, 10, 13))
      Memo.create(:title => '3', :memo_date => Date.new(2008, 10, 14))
      Memo.create(:title => '4', :memo_date => Date.new(2008, 10, 15))
      Holiday.create(:title=>'1', :day => 1, :month => 1)
      Holiday.create(:title=>'2', :day => 10, :month => 10)
      Holiday.create(:title=>'3', :day => 12, :month => 10)
      Holiday.create(:title=>'4', :day => 20, :month => 12)
      
#      Event.upcoming_events(Date.new(2008, 10, 10)).should == ["12.10.2008", "13.10.2008", "14.10.2008", "15.10.2008"]
#      Event.upcoming_events(Date.new(2008, 10, 9)).should == ["10.10.2008", "12.10.2008", "13.10.2008", "14.10.2008"]
#      Event.upcoming_events(Date.new(2008, 10, 14)).should == ["15.10.2008", "20.12.2008", "1.1.2009", "10.10.2009"]
    end
    
    
  end
  
  describe 'upcoming_events' do
    it "should return hash of memos (date => memo) with limited with 4 elements" do
      Memo.create(:title => '1', :memo_date => Date.new(2008, 10, 12))
      Memo.create(:title => '2', :memo_date => Date.new(2008, 10, 13))
      Memo.create(:title => '3', :memo_date => Date.new(2008, 10, 14))
      Memo.create(:title => '4', :memo_date => Date.new(2008, 10, 15))
      Memo.create(:title => '5', :memo_date => Date.new(2008, 10, 16))
      
#      raise Event.upcoming_events(Date.new(2008, 10, 10)).inspect
      
      Event.upcoming_events(Date.new(2008, 10, 10)).size.should == 5
#      Event.upcoming_events(Date.new(2008, 10, 10)).values.collect{|m| m.title}.should == ['1','2','3','4']
      
    end
    
    it "should return hash of events (date => event) with limited with 4 elements"
    
    it "should return mix of events and memos ordered by date limited with 4 elements"
    
    
  end
  
end

