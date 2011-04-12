class AddPersonToMemo < ActiveRecord::Migration
  def self.up
    add_column :memos, :person_id, :integer
    
    add_foreign_key :memos, :person_id, :persons
  end

  def self.down
    remove_column :memos, :person_id
  end
end
