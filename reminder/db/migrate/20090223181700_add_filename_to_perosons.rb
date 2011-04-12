class AddFilenameToPerosons < ActiveRecord::Migration
  def self.up
    add_column :persons, :filename, :string
    add_column :persons, :content_type, :string
    remove_column :persons, :picture
  end

  def self.down
    remove_column :persons, :filename
    remove_column :persons, :content_type
    add_column :persons, :picture, :string
  end
end
