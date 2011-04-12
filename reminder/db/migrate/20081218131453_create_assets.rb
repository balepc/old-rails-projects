class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.string   "name",                               :null => false
      t.string   "description"
      t.integer  "item_id",                            :null => false
      t.string   "filename"
      t.string   "content_type"
      t.boolean  "default",                            :null => false, :default => false
      t.string   "type"
      t.timestamps
    end
    
    add_foreign_key(:assets, :item_id, :items)
  end

  def self.down
    drop_table :assets
  end
end
