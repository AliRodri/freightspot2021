Rails.application.routes.draw do
  namespace :client do
    root 'dashboard#show'
  end
  namespace :admin do
    root 'dashboard#show'
  end

  # api routes
  get '/api/i18n/:locale' => 'api#i18n'

  root 'home#index'
end
