class AddvalidTillToBase < ActiveRecord::Migration
  def self.up
    add_column :document_types, :valid_till, :date
  end

  def self.down
    remove_column :document_types, :valid_till
  end
end