class EventsController < DashboardController
  EVENTS_ON_SCREEN = 9
  
  def show
    event = Event.instance(params[:id])
    
    if event.memo
      redirect_to memo_path(event.memo)
    elsif event.holiday
      redirect_to holiday_path(event.holiday)
    end
  end
  
  def new
    @memo = Memo.new
  end
  
  def index
    @current_date ||= Date.today
    shift = session[:date_shift] || 0
    events = Event.upcoming_events(Date.today, current_user)
    
    @next_event = events.detect{|e| e.holiday}
    
    session[:event_count] = events.size
    @upcoming_events = events[shift..shift+(EVENTS_ON_SCREEN-1)]
  end
  
#  def load_event
#    if not params[:memo_id].blank? or session[:memo_id]
#      session[:memo_id] = params[:memo_id] unless params[:memo_id].blank?
#      @memo = Memo.find(session[:memo_id])
#      @current_date = @memo.date
#    elsif not params[:holiday_id].blank? or session[:holiday_id]
#      session[:holiday_id] = params[:holiday_id] unless params[:holiday_id].blank?
#      @holiday = Holiday.find(session[:holiday_id])
#      @current_date = @holiday.date
#    end
#  end
  
  def start
    session[:date_shift] = 0
    redirect_to :action => 'show'
  end
  
  def next
    shift = session[:date_shift] || 0
    if session[:event_count] and (session[:event_count] - shift) > EVENTS_ON_SCREEN
      session[:date_shift] = shift + 1
    end
    redirect_to :back
  end
  
  def previous
    if session[:date_shift] and session[:date_shift] > 0
      session[:date_shift] =  (session[:date_shift] || 0) -1
    end
    redirect_to :back
  end
  
end