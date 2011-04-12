namespace :db do

  desc "Call db:drop db:create db:migrate db:migrate:data"
  task :full_cycle => [:drop, :create, :migrate]
  
  namespace :test do
    desc "Create test database"
    task :create => :environment do
      system "rake db:create RAILS_ENV=test" 
    end
  end
  
end