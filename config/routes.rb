Rails.application.routes.draw do
  get 'payment/new'
  get 'payment/create'
  root controller: :cocktails, action: :index
  resources :cocktails, only: [:index]
  devise_for :users
end
