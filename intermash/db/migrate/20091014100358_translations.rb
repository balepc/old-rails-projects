class Translations < ActiveRecord::Migration
  
  def self.mt(scope, key, value_ru, value_en)
    ViewTranslation.create(:scope=>scope, :code=>key.to_s, :value_ru=>value_ru, :value_en=>value_en)
  end

  def self.up
    mt("activerecord:errors:messages",:inclusion, "не включён в список","is not included in the list")
    mt("activerecord:errors:messages",:exclusion, "зарезервирован","is reserved")
    mt("activerecord:errors:messages",:invalid, "содержит недопустимое значение", "is invalid")
    mt("activerecord:errors:messages",:confirmation, "отличается от подтверждения", "doesn't match confirmation")
    mt("activerecord:errors:messages",:accepted, "должен быть принят", "must be accepted")
    mt("activerecord:errors:messages",:empty, "не может быть незаполненным", "can't be empty")
    mt("activerecord:errors:messages",:blank, "не может быть незаполненным", "can't be blank")

    mt("activerecord:errors:messages:too_long",:one, "слишком большой (максимальное число символов %d)","is too long (maximum is {{count}} characters)")
    mt("activerecord:errors:messages:too_long",:few, "слишком большой (максимальное число символов %d)","is too long (maximum is {{count}} characters)")
    mt("activerecord:errors:messages:too_long",:many, "слишком большой (максимальное число символов %d)","is too long (maximum is {{count}} characters)")
    mt("activerecord:errors:messages:too_long",:other, "слишком большой (максимальное число символов %d)","is too long (maximum is {{count}} characters)")

    mt("activerecord:errors:messages:too_short",:one, "слишком короткий (минимальное число символов %d)", "is too short (minimum is {{count}} characters)")
    mt("activerecord:errors:messages:too_short",:few, "слишком короткий (минимальное число символов %d)","is too short (minimum is {{count}} characters)")
    mt("activerecord:errors:messages:too_short",:many, "слишком короткий (минимальное число символов %d)","is too short (minimum is {{count}} characters)")
    mt("activerecord:errors:messages:too_short",:other, "слишком короткий (минимальное число символов %d)","is too short (minimum is {{count}} characters)")

    mt("activerecord:errors:messages:wrong_length",:one, "неверной длинны (должен содержать %d символов)", "is the wrong length (should be {{count}} characters)")
    mt("activerecord:errors:messages:wrong_length",:few, "неверной длинны (должен содержать %d символов)","is the wrong length (should be {{count}} characters)")
    mt("activerecord:errors:messages:wrong_length",:many, "неверной длинны (должен содержать %d символов)","is the wrong length (should be {{count}} characters)")
    mt("activerecord:errors:messages:wrong_length",:other, "неверной длинны (должен содержать %d символов)","is the wrong length (should be {{count}} characters)")

    mt("activerecord:errors:messages",:taken, "уже занят", "has already been taken")
    mt("activerecord:errors:messages",:not_a_number, "не число","is not a number")
    mt("activerecord:errors:messages",:greater_than, "може да е със стойност, по-голяма от {{count}}", "must be greater than {{count}}")
    mt("activerecord:errors:messages",:greater_than_or_equal_to, "може да е със стойност, по-голяма или равна на {{count}}", "must be greater than or equal to {{count}}")
    mt("activerecord:errors:messages",:equal_to, "може да е единствено със стойност, равна на {{count}}", "must be equal to {{count}}")
    mt("activerecord:errors:messages",:less_than, "може да е със стойност, по-малка от {{count}}", "must be less than {{count}}")
    mt("activerecord:errors:messages",:less_than_or_equal_to, "може да е със стойност, по-голяма или равна на {{count}}", "must be less than or equal to {{count}}")
    mt("activerecord:errors:messages",:odd, "може да е единствено четно", "must be odd")
    mt("activerecord:errors:messages",:even, "може да е единствено нечетно", "must be even")
  end

  def self.down
  end
end
