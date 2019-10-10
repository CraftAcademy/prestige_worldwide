Rails.application.routes.draw do
  root controller: :cocktails, action: :index
  resources :cocktails, only: [:index]
  devise_for :users, controllers: {
    omniauth:callbacks: :omniauth_callbacks
  }
end
