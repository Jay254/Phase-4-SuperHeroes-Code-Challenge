Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Define routes for the heroes resource
  resources :heroes, only: [:index, :show]

  # Define routes for the powers resource
  resources :powers, only: [:index, :show, :update]

  # Define route for creating hero_powers
  resources :hero_powers, only: [:create]
end