require 'test_helper'

class TagTest < Test::Unit::TestCase

  context "generate link of tree_node and holiday" do
    should "generate holiday path" do
      assert_equal '/holidays/1', Tag.create(:name=>'1', :holiday_id=>1).link
    end
    should "generate person oriented path" do
      assert_equal '/items?tree_node_id=1', Tag.create(:name=>'1', :tree_node_id => 1).link
    end
    should "generate person and holiday path" do
      assert_equal '/items?holiday_id=2&tree_node_id=1', 
        Tag.create(:name=>'1', :tree_node_id => 1, :holiday_id=>2).link
    end
    should "raise error if no holiday and tree_node specified" do
      tag = Tag.new(:name=>'1')
      assert_equal false, tag.save
      assert_not_nil tag.errors.on(:link)
    end
  end
  
  context 'validate' do
    should "have valid link format" do
      tag = Tag.new(:name=>'aaa', :link=>'asa')
      assert_equal false, tag.save
    end
  end

end
