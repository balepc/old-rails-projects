namespace :reminder do
  
  desc "Send messages"
  task :send_notifications => :environment do
    Workers::Remind.send_notifications
  end
  
end