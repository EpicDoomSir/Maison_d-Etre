Rails.application.routes.draw do
  root to: "sessions#index"
  resources :room_items
  resources :items
  resources :rooms
  resources :levels
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
