Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  resources :books
  resources :tags
  resources :users, only: [:index, :show]
  get 'userlist', to: 'users#index', as: 'userlist'
end
