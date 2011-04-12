class ChangeAttributeColumns < ActiveRecord::Migration
  def self.up
    remove_column :attributes, :code
    add_column :attributes, :description, :text
  end

  def self.down
    remove_column :attributes, :description
    add_column :attributes, :code, :string
  end
end
