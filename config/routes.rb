Rails.application.routes.draw do
  root controller: :cocktails, action: :index
  resources :cocktails, only: [:index]
  resources :payments, only: [:new, :create]
  devise_for :users
end
