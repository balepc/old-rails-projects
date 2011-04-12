set :application, "avrora"

set :ssh_options, { :forward_agent => true, :port=>987 }

set :deploy_to, "/var/www/apps/#{application}"


role :app, "deploy@gipoo.net"
role :web, "deploy@gipoo.net"
role :db,  "deploy@gipoo.net", :primary => true


set :scm, :git


set :repository,  "git@github.com:balepc/avrora.git"
set :branch, "master"

set :deploy_via, :export

set :user, 'deploy'
 
namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
 
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
 
  task :after_update_code, :roles => [:app] do
    copy_dblogin
    symlink_static
    translations
  end

  desc "Copy database login file to config directory"
  task :copy_dblogin, :roles => :app do
    run "cp #{shared_path}/database.yml #{release_path}/config/"
    #    run "cp #{shared_path}/backup_fu.yml #{release_path}/config/"
  end

  desc "Link static images to new release"
  task :symlink_static, :roles => :app do
    run "ln -s #{shared_path}/log #{release_path}/public/"
#    run "ln -s #{shared_path}/assets #{release_path}/public/"
#    run "ln -s #{shared_path}/system #{release_path}/public/"
#    run "ln -s #{shared_path}/user_logos #{release_path}/public/"
  end

#  after "deploy:symlink", "deploy:update_crontab"
  
  task :update_crontab, :roles => :db do
    run "cd #{release_path} && whenever --update-crontab #{application}"
  end

  task :translations, :roles => :db do
    run "cd #{release_path} && RAILS_ENV=production rake app:translations"
  end

end
