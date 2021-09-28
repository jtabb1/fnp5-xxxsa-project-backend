Rails.application.routes.draw do
  resources :todos, only: [:index, :show, :update, :create, :destroy]
  resources :types, only: [:index]
  resources :users, only: [:index, :show, :create, :update, :destroy]
end
