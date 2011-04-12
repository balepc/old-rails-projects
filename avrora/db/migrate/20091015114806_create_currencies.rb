class CreateCurrencies < ActiveRecord::Migration
  def self.up
    create_table :currencies do |t|

      t.string :name

      t.timestamps
    end

    add_column :attributes, :currency_id, :integer

    c= Currency.create(:name=>"LVL")
    Attribute.all.each {|a| a.currency=(c); a.save}
  end

  def self.down
    drop_table :currencies

    remove_column :attributes, :currency_id
  end
end
