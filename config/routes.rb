# frozen_string_literal: true

Rails.application.routes.draw do
  resources :questions
  devise_for :users
  resources :stats
  root 'welcome#index'
  resources :accounts

end
