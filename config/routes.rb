Rails.application.routes.draw do
  
  root 'pages#index'
  
  mount HealthMonitor::Engine, at: '/'
  
  get '/:locale' => 'pages#index'
  
  #resources :pages
  
  scope "(:locale)", locale: /pt|en/ do
    resources :pages
  end
  
end
