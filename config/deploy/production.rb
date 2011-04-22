set :application, 'alien8labs.com'
set :deploy_to,   '/srv/www/alien8labs.com/production'


set :branch,    'master' unless exists?(:branch)
set :rails_env, 'production'
