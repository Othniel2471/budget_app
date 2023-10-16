Rails.application.routes.draw do
  devise_for :users

  resources :expenses
  resources :categories
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "categories#index"
end