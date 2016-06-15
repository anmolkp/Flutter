Rails.application.routes.draw do
  devise_for :users
  resources :posts
  #Define Root URL
  root 'pages#index'

  #Over-ride default URLs by creating pretty URLs
  get '/home' => 'pages#home'

  get '/user/:id' => 'pages#profile'

  get '/explore' => 'pages#explore'

end
