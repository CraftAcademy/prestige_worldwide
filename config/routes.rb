Rails.application.routes.draw do
  root controller: :welcome, action: :index
  devise_for :users
end
