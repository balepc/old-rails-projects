class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.string  :title
      t.string  :code
      t.integer :level
      t.integer :follow_after_id
      t.integer :question_category
      t.integer :answer_type
    end
    
    add_index :questions, [:code]
    add_index :questions, [:follow_after_id]
  end

  def self.down
  end
end
