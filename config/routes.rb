Rails.application.routes.draw do
  get 'charges/new'
  get 'charges/create'
  root controller: :cocktails, action: :index
  resources :cocktails, only: [:index]
  resources :charges, only: [:new, :create]
  devise_for :users
end
