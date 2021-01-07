# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %i[new create show index]
  resources :sessions, only: %i[new create destroy]
  resources :events
  resources :attendences
  root 'events#index'
  # delete 'logout' => 'sessions#destroy'
end
