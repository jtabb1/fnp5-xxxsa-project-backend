Rails.application.routes.draw do
  resources :trainings, only: [:index, :show, :update, :create]
  resources :tasks, only: [:index, :show, :create, :update, :destroy]
  resources :employees, only: [:index, :show, :create, :update, :destroy]
end
