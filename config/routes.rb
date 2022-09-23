Rails.application.routes.draw do
  get 'sessions/new'
  resources :posts
  resources :users, only: [:create]
  resources :sessions, only: [:create]

  get "/register", to: "users#new"
  get "/sign_in", to: "sessions#new"


end
