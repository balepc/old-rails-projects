class ItemsAttributes < ActiveRecord::Migration
  def self.up
    create_table :items_attributes, :id => false do |t|
      t.references :item, :null => false
      t.references :attribute, :null => false
    end
  end

  def self.down
    drop_table :items_attributes
  end
end
