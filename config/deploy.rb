set :application, "getfake.icanhasruby.com"
set :repository,  "anil@icanhasruby.com:/var/git/getfake"


# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_via, :remote_cache
set :deploy_to, "/home/anil/public_html/#{application}"
set :mongrel_conf, "#{current_path}/config/mongrel_cluster.yml"

# ssh port
set :port, 2222

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git

ssh_options[:paranoid] = false

set :user, 'anil'
set :runner, user
set :use_sudo, 'false'

role :app, application
role :web, application
role :db,  application, :primary => true

desc "Reload Nginx"
task :reload_nginx do
  sudo "/etc/init.d/nginx reload"
end

after "deploy", "reload_nginx"
after "deploy", "deploy:cleanup"

end
