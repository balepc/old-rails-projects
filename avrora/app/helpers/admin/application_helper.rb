module Admin::ApplicationHelper

  MAX_HINT_LEN = 50

  def hint_for(obj, value)
    "<tr class='hint'><td></td><td><span style='font-size:9px;color:gray'>#{hint_core obj[value]}</span></td></tr>" unless base_locale? or obj[value].blank?
  end

  def attr_hint_for(obj, value)
    "<tr class='hint'><td colspan='4'><span style='font-size:9px;color:gray'>#{hint_core obj[value]}</span></td></tr>" unless base_locale? or obj[value].blank?
  end

  def hint_core(obj_value)
    val = obj_value.to_s
    val = val.gsub(/<\/?[^>]*>/, "")
    val.chars.count > MAX_HINT_LEN ? "#{val.slice(0, MAX_HINT_LEN-3)}..." : val
  end

  def save_go_back?
    params[:commit] and params[:commit].include?('вернуться')
  end

  # break_text - utf8/ansi
  def bt(text, max_word_len = 10, break_symbol = "<span style='font-size:1px'> </span>")
    i = 1
    text.chars.collect do |c|
      if c =~ /\s/
        i = 0
      elsif i % max_word_len == 0
        c += break_symbol
        i = 0
      end
      i += 1
      c
    end.join() unless text.blank?
  end

  def field_value(field_name)
    if I18n.locale.to_s == "ru"
      field_name.to_sym
    else
      "#{field_name}_#{I18n.locale}".to_sym
    end
  end

  def menu_selected(controller_name)
    if controller_name.is_a? Array
      {:class=>'selected'} if controller_name.include?(controller.controller_name)
    else
      {:class=>'selected'} if controller.controller_name == controller_name
    end
    
  end

  def include_calendar
    include_calendar_dependencies
    "<script type='text/javascript'>
        $(function() {
          $('.datepicker').datepicker({showOn: 'button', buttonImage: '/images/admin/calendar/calendar.gif', buttonImageOnly: true, showButtonPanel: true, dateFormat: 'yy-mm-dd 00:00:00'});
        });
    </script>"    
  end

  def include_filter_calendar
    include_calendar_dependencies
    "<script type='text/javascript'>
        $(function() {
          $('.datepicker').datepicker({dateFormat: 'yy-mm-dd'});
        });
    </script>"
  end

  def include_placement_calendar
    include_calendar_dependencies
    "<script type='text/javascript'>
        $(function() {
          $('.datepicker').datepicker({showOn: 'button', buttonImage: '/images/admin/calendar/calendar.gif', buttonImageOnly: true, showButtonPanel: true, dateFormat: 'dd-mm-yy'});
        });
    </script>"
  end
  
  def add_object_link(name, form, object, partial, where)
    html = render(:partial => partial, :locals => {:form => form}, :object => object)

    link_to_function name, %{
      var new_object_id = new Date().getTime() ;
      var html = jQuery('#{escape_javascript(html)}'.replace(/index_to_replace_with_js/g, new_object_id));
      html.appendTo(jQuery("#{where}")).slideDown('slow');
    }
  end

  def true_false(value)
    if value
      "<span #{"class='green'"}>Active</span>"
    else
      "<span #{"class='red'"}>Inactive</span>"
    end
  end

  def yes_no(value)
    if value
      "Да"
    else
      "Нет"
    end
  end

  def super_admin?
    request.remote_ip == '212.142.79.180' or RAILS_ENV == 'development'
    ## or request.remote_ip == '127.0.0.1'
  end

  def controller_names
    return current_user.role.sections.collect{|s| s.code.split(":")}.flatten if current_user.role
    []
  end

  def short_email(email, separator='@')
    return email if email.length < 17
    return "#{email.slice(0, email.length/2)}\n#{email.slice(email.length/2, email.length/2)}" unless email.include?(separator)
    return "#{short_email(email.split(separator)[0], '.')}#{separator}\n#{short_email(email.split(separator)[1],'.')}"
  end

  def login_page?
    controller.controller_name == 'sessions' or (controller.controller_name=='admins' and controller.action_name=='password')
  end

  def display_text(text, limit = 100)
    text.slice(0, limit) if text
  end

  private
  def include_calendar_dependencies
    stylesheet 'lib/ui.datepicker'
    stylesheet 'lib/ui.theme'
    stylesheet 'lib/jquery.ui'
    
    javascript 'admin/ui.datepicker'
  end

  def javascript(*files)
    content_for(:header) { javascript_include_tag(*files) }
  end

  def stylesheet(*files)
    content_for(:header) { stylesheet_link_tag(*files) }
  end

end
