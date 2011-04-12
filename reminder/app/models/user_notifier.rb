class UserNotifier < ActionMailer::Base
  
  def new_password_generated(user, new_password)
    recipients user.email
    from  "noreply@podarkof.net"
    subject "podarkof.net - Новый пароль"
    
    body :login => user.login, :new_password => new_password
  end
  
  def signup(user)
    recipients user.email
    from  "noreply@podarkof.net"
    subject "podarkof.net - Успешная регистрация"
    
    body :login => user.login
  end
  
  def reminder(memo)
    recipients memo.user.email
    from  "noreply@podarkof.net"
    subject "podarkof.net - Напоминаие - #{memo.title}"
    
    body :text => memo.description, :login => memo.user.login
  end
  
end
