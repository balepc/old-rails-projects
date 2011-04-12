module ReportsHelper

  def link_to_step(title, path, action)
    if (controller.action_name == action.to_s) or (controller.action_name == "save_#{action.to_s}")
      title
    else
      link_to title, path
    end
  end
  
end
