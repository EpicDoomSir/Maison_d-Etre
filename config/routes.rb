Rails.application.routes.draw do
  root to: "sessions#index", as: "homepage"
  resources :room_items, only: [:show, :edit, :update]
  resources :rooms, only: [:show, :edit, :update]
  resources :users, only: [:new, :create]

  get "/sessions/new", to: "sessions#new", as: "new_login"
  post "/sessions/create", to: "sessions#create", as: "login"
  delete "/sessions/logout", to: "sessions#logout", as: "logout"
  
  get "/sessions/new_game", to: "sessions#new_game", as: "new_game"
  get "/sessions/hallway_one", to: "sessions#hallway_one", as: "hallway_one"
  get "/sessions/hallway_two", to: "sessions#hallway_two", as: "hallway_two"
  get "/sessions/hallway_three", to: "sessions#hallway_three", as: "hallway_three"
end
