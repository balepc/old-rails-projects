class AddIsQuestionToTreeNodes < ActiveRecord::Migration
  
  def self.up
    add_column :tree_nodes, :is_question, :boolean, :default => false, :null => false
    
    TreeNode.find(:all).each {|tn| tn.save}
  end

  def self.down
    remove_column :tree_nodes, :is_question
  end
  
end
