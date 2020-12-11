Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  # resources :users
  # root 'items#home'
  get '/signup', to: 'users#new'
end
