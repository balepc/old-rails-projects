class ItemsAttributesOneToMany < ActiveRecord::Migration
  def self.up
    drop_table :items_attributes
    
    add_column :attributes, :item_id, :integer
  end

  def self.down
    remove_column :attributes, :item_id
    
    create_table :items_attributes do |t|
    end
  end
end
