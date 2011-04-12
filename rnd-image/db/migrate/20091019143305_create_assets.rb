class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.column :image_file_name,    :string
      t.column :image_content_type, :string
      t.column :image_file_size,    :integer
      t.column :image_updated_at,   :datetime
      t.column :image_created_at,   :datetime
    end
  end

  def self.down
    drop_table :assets
  end
end
