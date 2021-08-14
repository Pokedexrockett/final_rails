Rails.application.routes.draw do
get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  resources :strains do
    resources :reviews, only: [:new, :index]
  end
  resources :growers
  resources :users
  resources :notes

  get '/' => 'sessions#home' 
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new' 
  post '/signup' => 'users#create' 
  delete '/logout' => 'sessions#destroy'
  get '/most_popular' => 'restaurants#most_popular' 

  get '/auth/:provider/callback' => 'sessions#create'
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
