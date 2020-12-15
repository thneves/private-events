Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  resources :events
  root 'events#index'
  get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
