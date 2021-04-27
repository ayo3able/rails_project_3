Rails.application.routes.draw do
 
  root 'home#index'
  get 'home/about'
  get '/auth/:provider/callback', to: "users#omniauth"


  devise_for :users

      resources :projects do
   resources :tasks
  end

  resources :teams do
    resources :projects
  end
  

  resources :tasks
  resources :projects
  resources :teams
 
  resources :users, only:[:show]
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
