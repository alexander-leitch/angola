namespace :deploy do
  after :restart, :clear_cache do
    on roles(:app), in: :sequence, wait: 5 do
      execute :rake, 'cache:clear'
    end
  end
end