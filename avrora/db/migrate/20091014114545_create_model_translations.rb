class CreateModelTranslations < ActiveRecord::Migration
  def self.up
    create_table :model_translations do |t|
      t.string :translateable_type, :null=>false
      t.integer :translateable_id, :null=>false
      
      t.string :field

      t.string :locale

      t.string :value
      t.text   :text
    end
  end

  def self.down
    drop_table :model_translations
  end
end
