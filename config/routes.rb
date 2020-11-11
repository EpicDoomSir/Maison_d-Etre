Rails.application.routes.draw do
  root to: "sessions#index", as: "homepage"
  resources :room_items
  resources :items
  resources :rooms
  resources :levels
  resources :users

  get "/sessions/new", to: "sessions#new", as: "new_login"
  post "/sessions/create", to: "sessions#create", as: "login"
  delete "/sessions/logout", to: "sessions#logout", as: "logout"
  
  get "/sessions/new_game", to: "sessions#new_game", as: "new_game"
  get "/sessions/hallway", to: "sessions#hallway", as: "hallway"
end
