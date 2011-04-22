set :stages,        %w(staging production)
set :default_stage, %q(staging)


default_run_options[:pty] = true 
ssh_options[:forward_agent] = true
 

set :scm,        :git
set :deploy_via, :remote_cache
set :repository, 'git@github.com:alien8labs/alien8labs.git'
 

set :user,         'deploy'
set :admin_runner, 'deploy'
 

server "69.164.192.153", :web, :app, :db, :primary => true
 

namespace :deploy do

  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
 
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end


  desc 'Deploys shared code as symlinks'
  task :shared do
    run "ln -nfs /srv/www/alien8labs.com/shared/config/database.yml #{release_path}/config/database.yml"
  end
end


after "deploy", "deploy:shared", "deploy:migrate", "deploy:cleanup"


require 'capistrano/ext/multistage'
require 'bundler/capistrano'
