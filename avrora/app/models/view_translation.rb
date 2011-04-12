class ViewTranslation < ActiveRecord::Base

  validates_presence_of :code
  validates_presence_of :value_en

  validates_uniqueness_of :code, :scope=>[:scope]


  named_scope :named_en, lambda {|value| {:conditions=>["value_en LIKE ?", "%#{value}%"]}}
  named_scope :named_ru, lambda {|value| {:conditions=>["value_ru LIKE ?", "%#{value}%"]}}

#  def self.avaliable_locales
#    ['']+I18n.available_locales.collect{|l| l.to_s}
#  end

  def self.as_hash(locale)
    result = CollectionHash.new
    ViewTranslation.all.each do |tr|
      if tr.scope
        if tr.scope.include?('activerecord')
          result['activerecord'] ||= {}
          result['activerecord']['errors'] ||= {}
          result['activerecord']['errors']['messages'] ||= {}

          scopes = tr.scope.split(':')
          if ['one', 'few', 'many', 'other'].include?(tr.code)
            result['activerecord']['errors']['messages'][scopes[scopes.size-1]] ||= {}
            result['activerecord']['errors']['messages'][scopes[scopes.size-1]].store(tr.code.to_sym, tr.send("value_#{locale}"))
          else
            result['activerecord']['errors']['messages'].store(tr.code.to_sym, tr.send("value_#{locale}"))
          end
        else
          result.store(tr.code.to_sym, {tr.scope.to_s => tr.send("value_#{locale}")})
        end
      else
        result.store(tr.code.to_sym, tr.send("value_#{locale}"))
      end
    end
    result
  end

  def self.add(code, value_en, value_ru=value_en)
    unless ViewTranslation.find_by_code(code)
      ViewTranslation.create(:code=>code.to_s, :value_en=>value_en, :value_ru=>value_ru)
    end
  end
end
