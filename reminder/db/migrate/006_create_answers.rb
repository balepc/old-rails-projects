class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :memos_options, :options => 'ENGINE=InnoDB CHARSET=utf8', :id=>false do |t|
      t.integer :memo_id
      t.integer :option_id
    end
    
    add_index :memos_options, [:memo_id, :option_id], :name => 'memos_options_index'
    add_foreign_key :memos_options, :memo_id, :memos
    add_foreign_key :memos_options, :option_id, :options
  end

  def self.down
    drop_table :memos_options
  end
end
