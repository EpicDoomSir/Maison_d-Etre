Rails.application.routes.draw do
  root to: "sessions#index", as: "homepage"
  resources :room_items
  resources :items
  resources :rooms
  resources :levels
  resources :users

  get "/sessions/new", to: "sessions#new", as: "new_login"
  delete "/sessions/logout", to: "sessions#destroy", as: 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
