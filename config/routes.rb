Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'
  root to: "welcome#index"
  resources :alunos
  resources :campus

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
