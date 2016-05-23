Rails.application.routes.draw do
  devise_for :users
  root 'timeline#index'
  resources :timeline, only: [:index, :show, :create, :new]
  resources :articles, only: [:create]
end