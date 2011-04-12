class ItemsStandards < ActiveRecord::Migration
  def self.up
    create_table :items_standards, :id => false do |t|
      t.references :item, :null => false
      t.references :standard, :null => false
    end

  end

  def self.down
    drop_table :items_standards
  end
end
