class CreatePriceLists < ActiveRecord::Migration
  def self.up
    create_table :price_lists do |t|
      t.string    :name

      t.string   "pricelist_file_name"
      t.string   "pricelist_content_type"
      t.integer  "pricelist_file_size"
      t.datetime "pricelist_updated_at"

      t.timestamps
    end
  end

  def self.down
    drop_table :price_lists
  end
end
