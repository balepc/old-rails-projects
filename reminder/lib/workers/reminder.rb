module Workers
  module Reminder
    
    def send_notifications
      memos.each do |memo|
        send_mail(memo)
      end
    end
    
    def memos
      Memo.todays
    end
    
    def send_mail(memo)
      UserNotifier.deliver_reminder(memo)
    end
    
  end
end