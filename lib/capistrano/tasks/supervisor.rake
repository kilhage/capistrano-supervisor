namespace :supervisord do
  desc 'Reloads supervisord'
  task :reload do
    on roles fetch(:supervisord_reload_roles) do
      execute "supervisorctl reload"
    end
  end
  desc 'Restarts supervisord'
  task :restart do
    on roles fetch(:supervisord_restart_roles) do
      execute "supervisorctl restart"
    end
  end
end

namespace :load do
  task :defaults do
    set :supervisord_reload_roles,      :app
    set :supervisord_restart_roles,     :app
  end
end
