class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories, :options => 'ENGINE=InnoDB CHARSET=utf8' do |t|
      t.string :title, :null => false
    end
    
    add_column :items, :category_id, :integer
    add_foreign_key :items, :category_id, :categories
    
    Category.create(:title => 'Автомобиль и все для него')
    Category.create(:title => 'Дача')
    Category.create(:title => 'Бизнес')
    Category.create(:title => 'Здоровый образ жизни')
    Category.create(:title => 'Игрушки')
    Category.create(:title => 'Книги')
    Category.create(:title => 'Коллекционирование')
    Category.create(:title => 'Компьютеры')
    Category.create(:title => 'Кулинария')
    Category.create(:title => 'Животные')
    Category.create(:title => 'Настольные игры')
    Category.create(:title => 'Музыка, видео')
    Category.create(:title => 'Табак')
    Category.create(:title => 'Новогодние штучки')
    Category.create(:title => 'Подарки для взрослых')
    Category.create(:title => 'Подарки для дома')
    Category.create(:title => 'Путешествия')
    Category.create(:title => 'Романтика')
    Category.create(:title => 'Спорт, активный отдых')
    Category.create(:title => 'Мода и стиль (одежда, аксессуары, косметика)')
    Category.create(:title => 'Творчество (рисование, лепка…)')
    Category.create(:title => 'Техника')
    Category.create(:title => 'Фототография')
    Category.create(:title => 'Юмор')
  end

  def self.down
    remove_column :items, :category_id
    drop_table :categories
  end
end
