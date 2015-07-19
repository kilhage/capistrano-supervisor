namespace :supervisord do
  desc 'Restarts supervisord processes'
  task :restart do
    on roles fetch(:supervisord_restart_roles) do
      fetch(:supervisord_restart_processes).each do |program|
        execute "supervisorctl restart #{program}"
      end
    end
  end

  after 'deploy:published', 'supervisord:restart'
end

namespace :load do
  task :defaults do
    set :supervisord_restart_roles, :app
    set :supervisord_restart_processes, []
  end
end
