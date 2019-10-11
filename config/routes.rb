Rails.application.routes.draw do
  get 'welcome/index'

  resources :books
  resources :authors
  resources :genres
  resources :publishers

  root 'welcome#index'
end
