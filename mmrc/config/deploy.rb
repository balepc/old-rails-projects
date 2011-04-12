set :application, "mmrc"

set :ssh_options, { :forward_agent => true, :port=>987 }

set :deploy_to, "/var/www/apps/#{application}"

set :rails_env, "production"

role :app,          "deploy@mmrc.gipoo.net"
role :web,          "deploy@mmrc.gipoo.net"
role :db,           "deploy@mmrc.gipoo.net", :primary => true

set :branch, "master"

set :scm, :git
set :repository,  "git@github.com:balepc/mmrc.git"


set :deploy_via, :export

set :user, 'deploy'

namespace :deploy do
#  after  "deploy:symlink",        "deploy:update_crontab"

  task :after_update_code, :roles => [:app] do
    copy_database_backup_logs
  end


  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
  task :copy_database_backup_logs, :roles => :app do
    run "cp #{shared_path}/database.yml #{release_path}/config/"
    run "ln -s #{shared_path}/log #{release_path}/public/"
  end

  task :update_crontab, :roles => :app do
    run "cd #{current_path} && whenever --update-crontab -i 555 --set \"environment=#{rails_env}&path=#{current_path}\" #{application}"
  end
end