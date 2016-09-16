namespace :supervisord do
  desc 'Reloads supervisord'
  task :reload do
    on roles fetch(:supervisord_reload_roles) do
      execute "supervisorctl reload"
    end
  end

  desc 'Restart supervisord process'
  task :restart do
    on roles fetch(:supervisord_restart_roles) do
      fetch(:supervisord_processes).each do |process|
        execute "supervisorctl restart #{process}"
      end
    end
  end

  desc 'Start supervisord process'
  task :start do
    on roles fetch(:supervisord_restart_roles) do
      fetch(:supervisord_processes).each do |process|
        execute "supervisorctl start #{process}"
      end
    end
  end

  desc 'Stop supervisord process'
  task :stop do
    on roles fetch(:supervisord_restart_roles) do
      fetch(:supervisord_processes).each do |process|
        execute "supervisorctl stop #{process}"
      end
    end
  end
end

namespace :load do
  task :defaults do
    set :supervisord_reload_roles,      :app
    set :supervisord_restart_roles,     :app
    set :supervisord_processes,         ['all']
  end
end
