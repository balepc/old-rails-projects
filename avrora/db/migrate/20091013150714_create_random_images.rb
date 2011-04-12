class CreateRandomImages < ActiveRecord::Migration
  def self.up
    create_table :random_images do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
    end
  end

  def self.down
    drop_table :random_images
  end
end
