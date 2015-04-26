Rails.application.routes.draw do

  root 'welcome#index'
  
  get 'books/show'
  
  resources :password_resets, except: [:index, :destroy]
  resources :confirmations, only: :show
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: :new

  get 'users/:username' => 'users#show'
  
end