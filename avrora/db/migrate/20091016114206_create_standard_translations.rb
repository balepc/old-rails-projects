class CreateStandardTranslations < ActiveRecord::Migration
  def self.up
    Standard.all.each do |std|
      mt=ModelTranslation.find(:first, :conditions=>"translateable_type='Standard' and translateable_id=#{std.id} and field='name' and locale='en'")
      val=std.name
      val=val.sub(/СТАНДАРТЫ - /, "") unless val.blank?
      val=val.sub(/ГОСТ/, "GOST") unless val.blank?
      if mt
        mt.value = val
        mt.save
      else
        ModelTranslation.create(:translateable_type=>'Standard', :translateable_id=>std.id, :field=>'name', :locale=>'en', :value=>val)
      end
      
    end

  end

  def self.down
  end
end
