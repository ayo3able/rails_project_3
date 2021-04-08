Rails.application.routes.draw do
  get 'home/about'
  root 'home#index'
  devise_for :users
  resources :tasks
  resources :projects
  resources :teams
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
