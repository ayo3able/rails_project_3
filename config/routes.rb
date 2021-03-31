Rails.application.routes.draw do
  devise_for :teams
  devise_for :tasks
  devise_for :projects
  devise_for :users
  resources :tasks
  resources :projects
  resources :teams
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
