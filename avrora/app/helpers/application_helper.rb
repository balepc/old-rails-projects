# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def base_locale?
    I18n.locale == I18n.default_locale
  end

  def base_locale!
    I18n.locale = I18n.default_locale
  end

  def __(value)
    if value.blank?
      '---'
    else
      value
    end
  end

end
