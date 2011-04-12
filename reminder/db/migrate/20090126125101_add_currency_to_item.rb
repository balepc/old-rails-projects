class AddCurrencyToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :currency_id, :integer
    
    change_column :items, :price, :float

    Item.update_all(:currency_id => 1)
    
    add_foreign_key :items, :currency_id, :currencies
  end

  def self.down
    remove_column :items, :currency_id
  end
end
