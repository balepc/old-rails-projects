class CreateItemImage < ActiveRecord::Migration
  def self.up
    create_table    :images do |t|
      t.references  :item
      t.string      :filename
      t.string      :content_type
      t.integer     :size
      t.integer     :width
      t.integer     :height
      t.timestamp   :created_at
    end
    
    add_column :items, :image_id, :integer
  end

  def self.down
    remove_column :items, :image_id
    
    drop_table :images
  end
end
