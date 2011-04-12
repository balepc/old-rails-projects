class SJoiner

  def initialize(initial_content = "", options = {})
    @content = initial_content
    @def_sep = options[:def_sep]
  end

  def sjoin(add, options = {})
    sep = options[:sep] || @def_sep
    label = options[:label]
    if (!add.blank?)
      @content += sep unless sep.blank? or @content.blank?
      @content += label unless label.blank?
      @content += add
    end
    self
  end

  def to_s
    @content
  end

end