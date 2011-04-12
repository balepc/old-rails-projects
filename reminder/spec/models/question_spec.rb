require File.join(File.dirname(__FILE__), "../../spec/spec_helper")

describe 'Question' do
#  before(:each) do
#    Question.destroy_all
#    @question = Question.new
#  end
#  
#  it "should validate the level in Question and Options" do 
#    q1 = Question.create!(:title=>'1', :level=>5)
#    lambda {q1.predefined_answers << Option.create(:name=>"4", :level=>4)}.should raise_error
#  end
#  
#  it "should not allow save question with duplicate level without sequences" do
#    Question.create!(:title => '1', :level => 1)
#    lambda { Question.create!(:title => '11', :level => 1) }.should raise_error
#    
#    Question.create!(:title => '2', :level => 2, :follow_after => Option.create(:name=>'1', :level=>1))
#    Question.create!(:title => '22', :level => 2)
#    
#    Question.create!(:title => '3', :level => 3, :follow_after => Option.create(:name=>'1', :level=>1))
#    Question.create!(:title => '333', :level => 3)
#    lambda {Question.create!(:title => '333', :level => 3)}.should raise_error
#  end
#  
#  it "should not allow save question with duplicate level with same sequences" do 
#    pa = Option.create(:name=>'1', :level=>1)
#    Question.create!(:title => '3', :level => 3, :follow_after => pa)
#    lambda {Question.create!(:title => '333', :level => 3, :follow_after => pa)}.should raise_error
#  end
#
#  it "should return question by specified level" do
#    q1 = Question.create(:title=>'1', :level => 1)
#    q2 = Question.create(:title=>'2', :level => 2)
#    q3 = Question.create(:title=>'3', :level => 3)
#    q4 = Question.create(:title=>'4', :level => 4)
#    q5 = Question.create(:title=>'5', :level => 5)
#    
#    Question.next_by_level(1).should == q1
#    Question.next_by_level(2).should == q2
#    Question.next_by_level(3).should == q3
#    Question.next_by_level(4).should == q4
#    Question.next_by_level(5).should == q5
#    Question.next_by_level(6).should be_nil
#    Question.next_by_level(100).should be_nil
#  end
#  
#  it "should return question by specified level with set dependencies" do
#    pa1 = Option.create(:name => '2.1', :level => 2)
#    pa2 = Option.create(:name => '2.2', :level => 2)
#    
#    q1 = Question.create(:title=>'1', :level => 1)
#    q2 = Question.create(:title=>'2', :level => 2, :follow_after => pa1)
#    q3 = Question.create(:title=>'2', :level => 2, :follow_after => pa2)
#    q4 = Question.create(:title=>'2', :level => 2)
#    
#    Question.next_by_level(0).should == q1
#    Question.next_by_level(1).should == q1
#    Question.next_by_level(2).should == q4
#    Question.next_by_level(2, [pa1.id]).should == q2
#    Question.next_by_level(2, [pa2.id]).should == q3
#  end
#  
#  it "should skip a step if no question" do
#    q1 = Question.create(:title=>'1', :level => 1)
#    q3 = Question.create(:title=>'3', :level => 3)
#    q5 = Question.create(:title=>'5', :level => 5)
#    
#    Question.next_by_level(0).should == q1
#    Question.next_by_level(1).should == q1
#    Question.next_by_level(2).should == q3
#    Question.next_by_level(3).should == q3
#    Question.next_by_level(4).should == q5
#    Question.next_by_level(5).should == q5
#  end
#  
#  it "should detect unanswered questions on every level" do
#    q1 = Question.create(:title=>'1', :level => 1)
#    o1 = Option.create(:name=>'11', :level => 1)
#    q1.options << o1
#    
#    q2 = Question.create(:title=>'2', :level => 2)
#    o2 = Option.create(:name=>'2', :level => 2)
#    q2.options << o2
#    
#    q3 = Question.create(:title=>'3', :level => 3)
#    o3 = Option.create(:name=>'33', :level => 3)
#    q3.options << o3
#    
#    Question.unaswered_question([q1, q3]).should == q2
#  end
  
end

