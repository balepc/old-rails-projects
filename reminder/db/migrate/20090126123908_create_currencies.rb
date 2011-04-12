class CreateCurrencies < ActiveRecord::Migration
  def self.up
    create_table :currencies, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.string :name, :null => false
      t.string :code, :null => false, :length => 10
    end
    
    create_table :currency_rates, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.integer :currency_id, :null => false
      t.integer :to_currency_id, :null => false
      t.float   :rate, :null => false
      t.timestamps
    end
    
    add_foreign_key :currency_rates, :currency_id, :currencies
    add_foreign_key :currency_rates, :to_currency_id, :currencies
  end

  def self.down
    drop_table :currency_rates
    drop_table :currencies
  end
end
