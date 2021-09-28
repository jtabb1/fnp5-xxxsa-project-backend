Rails.application.routes.draw do
  resources :trainings, only: :create
  resources :tasks, only: [:index, :destroy]
  resources :employees, only: [:index, :show, :create]
end
