require File.dirname(__FILE__) + '/../spec_helper'

describe Recommendation do
  fixtures :items, :options
  
  before(:each) do
    @recommendation = Recommendation.new
  end

  describe 'admin_defined_bf' do
    it "should return absolute fit items" do
      p1 = QuestionTree.create(:option_id => 1)
      q1 = QuestionTree.create(:option_id => 2, :parent => p1)
      q2 = QuestionTree.create(:option_id => 3, :parent => p1)
      
      it1 = Item.find(1)
      it2 = Item.find(2)
      it3 = Item.find(3)
      
      it1.tree_node = q1
      it2.tree_node = q2
      it3.tree_node = q1
      
      it1.save! && it2.save! && it3.save!
      
      @recommendation.admin_defined_bf(p1, 100).should be_empty
      @recommendation.admin_defined_bf(q1, 100).size.should == 2
      @recommendation.admin_defined_bf(q2, 100).size.should == 1
    end
  end
  
  describe 'admin_defined_pf' do
    it "should return all items that have smth in common" do
      p1 = QuestionTree.create(:option_id => 1)
      q1 = QuestionTree.create(:option_id => 2, :parent => p1)
      q2 = QuestionTree.create(:option_id => 3, :parent => p1)
      q3 = QuestionTree.create(:option_id => 4, :parent => q1)
      
      it1 = Item.find(1)
      it2 = Item.find(2)
      it3 = Item.find(3)
      it4 = Item.find(4)
      it5 = Item.find(5)
      
      it1.tree_node = q1
      it2.tree_node = q2
      it3.tree_node = q1
      it4.tree_node = p1
      it5.tree_node = q3
      
      
      it1.save! && it2.save! && it3.save! && it4.save! && it5.save!
      
      @recommendation.admin_defined_pf(p1, 100).size.should == 5
      
      @recommendation.admin_defined_pf(p1, 100).collect{|ri| ri.item.id}.should == [it4.id, it2.id, it1.id, it3.id, it5.id]
#      @recommendation.admin_defined_pf(p1, 100).collect{|ri| ri.rate}.should ==    [1.0,   0.5, 0.5, 0.5, 0.333333333333333]
      ##
      @recommendation.admin_defined_pf(q1, 100).size.should == 3
      @recommendation.admin_defined_pf(q1, 100).collect{|ri| ri.item}.should == [it1, it3, it5]
#      @recommendation.admin_defined_pf(q1, 100).collect{|ri| ri.rate}.should == [1.0, 1.0, 0.666666666666667]
      ##
      @recommendation.admin_defined_pf(q2, 100).size.should == 1
      @recommendation.admin_defined_pf(q2, 100).collect{|ri| ri.item}.should == [it2]
      @recommendation.admin_defined_pf(q2, 100).collect{|ri| ri.rate}.should == [1.0]
      ##
      @recommendation.admin_defined_pf(q3, 100).size.should == 1
      @recommendation.admin_defined_pf(q3, 100).collect{|ri| ri.item}.should == [it5]
      @recommendation.admin_defined_pf(q3, 100).collect{|ri| ri.rate}.should == [1.0]
    end
  end
  
  
end

