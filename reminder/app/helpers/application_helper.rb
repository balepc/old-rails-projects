module ApplicationHelper
  
  def event_selected?
    @memo || @holiday
  end
  
  def gifts_for
    if @memo
      'Выбор на день рождения'
    elsif @holiday
      "Выбор на #{@holiday.title}"
    end
  end
  
  def on_dashboard?
    self.controller.controller_name == 'dashboard'
  end
  
  def on_reminder?
    self.controller.controller_name == 'events'
  end
  
end
