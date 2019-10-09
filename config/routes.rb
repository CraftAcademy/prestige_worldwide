Rails.application.routes.draw do
  root controller: :welcome, action: :index
  resources :cocktails, only: [:index]
  devise_for :users
end
