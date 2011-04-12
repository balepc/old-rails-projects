class RemoveAttribute < ActiveRecord::Migration
  def self.up
    drop_table :attributes
    
    create_table :complectation, :id=>false do |t|
      t.integer :item_id
      t.integer :complectation_id
    end
  end

  def self.down
    drop_table :complectation
  end
end
