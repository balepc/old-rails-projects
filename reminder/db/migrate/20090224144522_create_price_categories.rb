class CreatePriceCategories < ActiveRecord::Migration
  def self.up
    create_table :price_categories, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.string :title, :null => false
    end
    
    PriceCategory.create(:title => 'до 50 Ls')
    PriceCategory.create(:title => 'от 50 до 100 Ls')
    PriceCategory.create(:title => 'от 100 до 200 Ls')
    PriceCategory.create(:title => 'от 200 до 500 Ls')
    PriceCategory.create(:title => 'от 500 до 1000 Ls')
    PriceCategory.create(:title => 'выше 1000 лат')
    
    add_column :items, :price_category_id, :integer
    add_foreign_key :items, :price_category_id, :price_categories
    
  end

  def self.down
    drop_table :price_categories
  end
end
