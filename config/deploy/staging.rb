set :application, 'staging.alien8labs.com'
set :deploy_to,   '/srv/www/alien8labs.com/staging'


set :branch,    'development' unless exists?(:branch)
set :rails_env, 'staging'
