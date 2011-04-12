module Translateable

  class << self
    def included(base)
      base.extend ClassMethods
    end
  end

  TRANSLITABLE_FIELDS = ["name", "title"]

  TABLE_LOWER = {
    "і"=>"i","ґ"=>"g","ё"=>"yo","№"=>"#","є"=>"e",
    "ї"=>"yi","а"=>"a","б"=>"b",
    "в"=>"v","г"=>"g","д"=>"d","е"=>"e","ж"=>"zh",
    "з"=>"z","и"=>"i","й"=>"y","к"=>"k","л"=>"l",
    "м"=>"m","н"=>"n","о"=>"o","п"=>"p","р"=>"r",
    "с"=>"s","т"=>"t","у"=>"u","ф"=>"f","х"=>"h",
    "ц"=>"ts","ч"=>"ch","ш"=>"sh","щ"=>"sch","ъ"=>"'",
    "ы"=>"yi","ь"=>"","э"=>"e","ю"=>"yu","я"=>"ya"
  }.sort do | one, two|
    two[1].size <=> one[1].size
  end

  TABLE_UPPER =  {
    "Ґ"=>"G","Ё"=>"YO","Є"=>"E","Ї"=>"YI","І"=>"I",
    "А"=>"A","Б"=>"B","В"=>"V","Г"=>"G",
    "Д"=>"D","Е"=>"E","Ж"=>"ZH","З"=>"Z","И"=>"I",
    "Й"=>"Y","К"=>"K","Л"=>"L","М"=>"M","Н"=>"N",
    "О"=>"O","П"=>"P","Р"=>"R","С"=>"S","Т"=>"T",
    "У"=>"U","Ф"=>"F","Х"=>"H","Ц"=>"TS","Ч"=>"CH",
    "Ш"=>"SH","Щ"=>"SCH","Ъ"=>"'","Ы"=>"YI","Ь"=>"",
    "Э"=>"E","Ю"=>"YU","Я"=>"YA",
  }.sort do | one, two|
    two[1].size <=> one[1].size
  end

  TABLE = TABLE_UPPER + TABLE_LOWER

  # Заменяет кириллицу в строке на латиницу. Немного специфично потому что поддерживает
  # комби-регистр (Щука -> Shuka)
  def self.translify(str)
    chars = str.split(//)

    lowers = TABLE_LOWER.map{|e| e[0] }
    uppers = TABLE_UPPER.map{|e| e[0] }

    hashtable = {}
    TABLE.each do | item |
      next unless item[0] && item[1]
      hashtable[item[0]] = item[1]
    end

    result = ''
    chars.each_with_index do | char, index |
      if uppers.include?(char) && lowers.include?(chars[index+1])
        # Combined case. Here we deal with Latin letters so there is no problem to use
        # Ruby's builtin upcase_downcase
        ch = hashtable[char].downcase.capitalize
        result << ch
      elsif uppers.include?(char)
        result << hashtable[char]
      elsif lowers.include?(char)
        result << hashtable[char]
      else
        result << char
      end
    end
    return result
  end

  module ClassMethods

    def translate_fields(fields)
      include InstanceMethods
      has_many :model_translations, :as => :translateable
      after_save :save_translations

      fields.to_a.each do |field|

        define_method(field.to_s) do
          old_ig = @ignore
          @ignore = false
          if old_ig
            TRANSLITABLE_FIELDS.include?(field.to_s) ? Translateable.translify(super) : super
          else
            if I18n.locale.to_sym == I18n.default_locale.to_sym
              super
            else
              self.send("#{field.to_s}_#{I18n.locale.to_s}")
            end
          end
        end

        I18n.available_locales.each do |locale|
          if locale.to_sym != I18n.default_locale.to_sym

            define_method("#{field.to_s}_#{locale.to_s}") do
              trl = model_translations.detect{|t| t.field.to_s==field.to_s and t.locale.to_sym==locale.to_sym}
              @ignore = trl.blank?
              return @ignore ? self.send(field.to_sym) : (trl.value || trl.text)
            end

            define_method("#{field.to_s}_#{locale.to_s}=") do |value|
              trl = model_translations.detect{|t| t.locale.to_s==locale.to_s and t.field.to_sym==field.to_sym}

              column = self.class.columns.to_a.detect{|c| c.name.to_s == field.to_s}
              column.text? if column

              if column and column.type == :text
                text = value
                str = nil
              else
                str = value
                text = nil
              end
             
              if trl
                trl.update_attribute(:text, text)
                trl.update_attribute(:value, str)
              else
                model_translations.build(:locale=>locale.to_s,
                  :field=>field.to_s, :value=>str, :text=>text)
              end
            end

            
          end
        end

      end

    end    
  end

  module InstanceMethods

    def save_translations
      model_translations.each do |trls|
        trls.save
      end
    end

  end

end


if Object.const_defined?("ActiveRecord")
  ActiveRecord::Base.send(:include, Translateable)
end