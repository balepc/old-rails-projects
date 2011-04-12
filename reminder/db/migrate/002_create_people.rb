class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :persons, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.string :first_name
      t.string :last_name
      
      t.date   :birthdate
      t.date   :name_day
      
      t.string :picture
    end
    
    create_table :persons_memos, :options => 'ENGINE=InnoDB CHARSET=utf8', :id => false do |t|
      t.integer :person_id
      t.integer :memo_id
    end
    
    add_foreign_key :persons_memos, :person_id, :persons
    add_foreign_key :persons_memos, :memo_id, :memos
    
    add_index :persons, :birthdate
  end

  def self.down
    drop_table :persons_memos
    drop_table :persons
  end
end
