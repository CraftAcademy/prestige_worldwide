Rails.application.routes.draw do
  root controller: :cocktails, action: :index

  resources :cocktails, only: [:index]
end
