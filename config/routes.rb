# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :search_caronas
  resources :sessions
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'
  get 'sessions/new'
  resources :users
  get 'search' => 'users#search'
  resources :alunos
  resources :campus
  put 'reactive' => 'campus#reactive'
  resources :caronas

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
