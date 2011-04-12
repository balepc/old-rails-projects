class AddAdminStaticTrlForValidation < ActiveRecord::Migration
  def self.up
    ViewTranslation.create(:scope=>'activerecord:errors:template',
      :code=>'header', :value_en=>'Could not save record', :value_ru=>'Запись не сохранена')
    ViewTranslation.create(:scope=>'activerecord:errors:template',
      :code=>'body', :value_en=>'The form has some invalid field values',
      :value_ru=>'Форма содержит некорректные значения полей')
  end

  def self.down
    ViewTranslation.find(:all, :conditions=>"scope like 'activerecord:errors:template%'").each {|r| r.destroy }
  end
end
