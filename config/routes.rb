Rails.application.routes.draw do
  
  get 'comments/new'
  get 'sessions/new'

  root to: 'pages#index'
  get 'pages/help'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :topics
  resources :comments
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  
end
