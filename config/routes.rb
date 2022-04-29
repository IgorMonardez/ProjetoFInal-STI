Rails.application.routes.draw do
  devise_for :users
  get 'sessions/new'
  resources :users
  root to: "welcome#index"
  resources :alunos
  resources :campus
  resources :caronas
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
