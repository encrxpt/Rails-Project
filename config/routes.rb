Rails.application.routes.draw do
  get 'publishers/index'
  get 'publishers/show'
  get 'genres/index'
  get 'genres/show'
  get 'authors/index'
  get 'authors/show'
  get 'books/index'
  get 'books/show'
  get 'welcome/index'

  resources :books
  resources :authors
  resources :genres
  resources :publishers

  root 'welcome#index'
end
