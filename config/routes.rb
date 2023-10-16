Rails.application.routes.draw do
  get 'splash/index'
  get 'pages/home'
  devise_for :users

  resources :expenses
  resources :categories
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'splash#index'
end
