class CreateViewTranslations < ActiveRecord::Migration
  def self.up
    
    create_table :view_translations do |t|
      t.string "scope"
      t.string "code",     :null => false
      t.string "value_en"
      t.string "value_ru"

      t.timestamps
    end
    add_index "view_translations", ["code"], :name => "main_translations"
  end

  def self.down
    drop_table :view_translations
  end
end
