Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'welcome/index'

  resources :books
  resources :authors
  resources :genres
  resources :publishers

  root 'welcome#index'
end
