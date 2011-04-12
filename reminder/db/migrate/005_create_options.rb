class CreateOptions < ActiveRecord::Migration
  def self.up
    create_table :options, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.string  :name
      t.integer :level
    end
    
    create_table :options_questions, :options => 'ENGINE=InnoDB CHARSET=utf8', :id => false do |t|
      t.integer :option_id
      t.integer :question_id
      t.integer :order
    end
    
    add_index :options_questions, [:option_id, :question_id], :name => 'options_questions_index'
    add_foreign_key :options_questions, :option_id, :options
    add_foreign_key :options_questions, :question_id, :questions
    add_foreign_key :questions, :follow_after_id, :options
  end

  def self.down
    drop_table :options_questions
    drop_table :questions
    drop_table :options
  end
end
