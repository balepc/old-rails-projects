class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.string :title
      t.text   :description
      t.float  :price
      t.string :link
    end
    
    create_table :items_options, :options => 'ENGINE=InnoDB CHARSET=utf8', :id => false do |t|
      t.references :option
      t.references :item
    end
    
    add_index :items, :title
    
    add_foreign_key :items_options, :option_id, :options
    add_foreign_key :items_options, :item_id, :items
    add_index :items_options, [:option_id, :item_id], :name => "items_options_index"
  end

  def self.down
    drop_table :items_options
    drop_table :items
  end
end
