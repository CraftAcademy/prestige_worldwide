Rails.application.routes.draw do
  root controller: :cocktails, action: :index
  resources :cocktails, only: [:index]
  resources :charges, only: [:new, :create]
  resources :memberships
  devise_for :users
end
