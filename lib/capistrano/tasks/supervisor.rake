namespace :supervisord do
  desc 'Reloads supervisord'
  task :reload do
    on roles fetch(:supervisord_reload_roles) do
      execute "supervisorctl reload"
    end
  end

  after 'deploy:published', 'supervisord:reload'
end

namespace :load do
  task :defaults do
    set :supervisord_reload_roles,      :app
  end
end
