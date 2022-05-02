# frozen_string_literal: true
Rails.application.routes.draw do
  resources :search_caronas
  get 'sessions/new'
  resources :users
  root to: "welcome#index"
  resources :alunos
  resources :campus
  resources :caronas
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'
  get 'search' => 'users#search'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
