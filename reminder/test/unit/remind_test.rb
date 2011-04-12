require 'test_helper'

class RemindTest < Test::Unit::TestCase
  fixtures :users
  include Workers::Reminder  
  
  context "send_notifications" do
    
    setup do
      Memo.destroy_all  
      @user = User.find(1)
    end
      
    should "send casual notifications" do
      Memo.create(:title => 'Memo0', :memo_date => Date.today-1, :user => @user)
      memo1 = Memo.create(:title => 'Memo1', :memo_date => Date.today, :user => @user)
      Memo.create(:title => 'Memo2', :memo_date => Date.today+1, :user => @user)
        
      assert_equal 1, memos.size
      assert_equal memo1.id, memos[0].id
    end
      
    should "send only if 'enable_notification' is on" do
    end
      
    should "send recurring notifications" do
      memo1 = Memo.create(:title => 'Memo0', :memo_date => Date.today-1.year, :user => @user, :recurring => true)
      memo2 = Memo.create(:title => 'Memo0', :memo_date => Date.today-1.year, :user => @user, :recurring => false)
      
      assert_equal 1, memos.size
      assert_equal memo1.id, memos[0].id
    end
      
  end
    
end


        