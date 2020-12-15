Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :index]
  resources :sessions, only: [:new, :create, :destroy]
  root 'users#index'
  # delete 'logout' => 'sessions#destroy'
end
