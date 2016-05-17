Rails.application.routes.draw do
  devise_for :users
  #ログイン画面を初期画面に設定
  devise_scope :user do
    root :to => "devise/sessions#new"
  end
  resources :timeline, only: [:index, :show]
end
