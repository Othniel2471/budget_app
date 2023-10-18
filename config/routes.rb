# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root 'splash#index'
  resources :categories do
    resources :expenses
  end
  resources :users
end