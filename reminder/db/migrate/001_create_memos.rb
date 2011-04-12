class CreateMemos < ActiveRecord::Migration
  def self.up
    create_table :holidays, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.string :title
      t.integer :day
      t.integer :month
    end
    
    create_table :memos, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.string     :title
      t.timestamp  :memo_date
      
      t.integer    :holiday_id
      
      t.timestamps
    end
    
    add_foreign_key :memos, :holiday_id, :holidays
    add_index       :memos, :memo_date
    
    add_index       :holidays, [:day, :month]
  end

  def self.down
    drop_table :memos
    drop_table :holidays
  end
end
