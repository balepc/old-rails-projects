class AddUserIdToPerson < ActiveRecord::Migration
  def self.up
    drop_table :persons_memos
    remove_foreign_key(:memos, :person_id)
    remove_column(:memos, :person_id)
    drop_table :persons
  end

  def self.down
  end
end
