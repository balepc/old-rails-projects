set :stages, %w(staging production)
set :default_stage, "production"
require 'capistrano/ext/multistage'




set :application, "reminder"

set :scm, :git
set :repository,  "git://github.com/balepc/reminder.git"
set :branch, "master"

#set :scm_username, "anton"
#set :scm_password, "antonpass"


#set :deploy_via, :remote_cache
set :deploy_via, :export

#set :git, "/home/deploy/bin/git"

set :user, 'deploy'
set :ssh_options, { :forward_agent => true }

ssh_options[:port] = 1488
role :app, "deploy@podarkof.net"
role :web, "deploy@podarkof.net"
role :db,  "deploy@podarkof.net", :primary => true
 
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

  end

  desc "Copy database login file to config directory"
  task :copy_dblogin, :roles => :app do
    run "cp #{shared_path}/database.yml #{release_path}/config/"
    run "cp #{shared_path}/backup_fu.yml #{release_path}/config/"
  end

  desc "Link static images to new release"
  task :symlink_static, :roles => :app do
    run "ln -s #{shared_path}/assets #{release_path}/public/" 
    run "ln -s #{shared_path}/holidays #{release_path}/public/" 
    run "ln -s #{shared_path}/memos #{release_path}/public/"
  end
end
