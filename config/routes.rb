Rails.application.routes.draw do
  resources :todos, only: [:index, :show, :update, :create, :destroy]
  resources :types, only: [:index]
  resources :users, only: [:show, :create]
  # resources :users, only: [:index, :show, :create, :update, :destroy]

  # Draft below:
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
