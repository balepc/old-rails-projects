class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.references :category
      t.string :title
      t.string :model
      t.string :code
      t.string :country
      t.string :company
      t.string :article
      t.string :shortdesc, :limit => 500
      t.float :price
      # standards m-m
      t.text :description
      # komplektacija 1-m
      
      /#
      * Группа+
* Название+
* Модель+
* Код ТНВЭД+
* Страна производитель+
* Фирма производитель+
* Артикул+
* Краткое описание (только текст).+
* Цена+
* Сертификаты ГОСТ
* Расширенное описание (может включать в себя текстовую информацию, графические изображения, ссылки и документы)
* Комплектация. Состоит из Название и текстового полея. Может быть неограниченное число конмплектаций. Думаю можно просто как таблицу внизу страницы добавить.
#/
      


      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
