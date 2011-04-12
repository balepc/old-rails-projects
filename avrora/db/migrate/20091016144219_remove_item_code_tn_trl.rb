class RemoveItemCodeTnTrl < ActiveRecord::Migration
  def self.up
    ViewTranslation.find(:first, :conditions=>"code = 'item_code_tn'").destroy
    vt=ViewTranslation.find(:first, :conditions=>"code = 'item_code'")
    vt.value_ru = 'Код ТНВЭД'
    vt.value_en = 'Код ТНВЭД'
    vt.save
  end

  def self.down
  end
end
