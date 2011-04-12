module TagsHelper
  
  def tag_style(tag)
    case tag.style 
      when Tag::TAG_STYLE_SMALL
        return ''
      when Tag::TAG_STYLE_NORMAL
        return 'font-size: 15px; font-weight: bold;'
      when Tag::TAG_STYLE_BIG
        return 'font-size: 17px; font-weight: bold;'
      when Tag::TAG_STYLE_HUGE
        return 'font-size: 19px; font-weight: bold;'
    end
  end
  
end
