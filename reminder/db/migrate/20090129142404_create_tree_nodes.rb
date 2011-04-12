class CreateTreeNodes < ActiveRecord::Migration
  def self.up
    create_table :tree_nodes, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.integer :parent_id
      t.integer :option_id, :null => false
    end
    
    remove_column :options, :level
    remove_column :options, :selection_count
    
    drop_table :items_options
    drop_table :memos_options
    drop_table :options_questions
    drop_table :questions
    
    drop_table :taggings
    drop_table :tags
    
    add_column :options, :option_type, :string
  end

  def self.down
    drop_table :question_trees
  end
end
