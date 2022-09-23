Rails.application.routes.draw do
  resources :posts
  resources :users

  get "/register", to: "users#new"


end
