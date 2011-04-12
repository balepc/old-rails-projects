class ChangeImageColumns < ActiveRecord::Migration
  def self.up
    drop_table :images
    
    create_table :images do |t|
      t.references :item
      t.string :image_data_file_name
      t.string :image_data_content_type
      t.integer :image_data_file_size
      t.datetime :image_data_updated_at
    end
  end

  def self.down
  end
end
