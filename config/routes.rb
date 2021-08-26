Rails.application.routes.draw do
  

  resources :growers


  get '/' => 'sessions#home' 
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new' 
  post '/signup' => 'users#create' 
  delete '/logout' => 'sessions#destroy' 
  # delete 'strains/:id/delete' => 'strains#destroy', as: 'strains_delete'
  # get '/strains/:id/delete' => 'strains#destroy'


  get '/auth/google_oauth2/callback' => 'sessions#omniauth' 

  resources :reviews
  resources :strains do
    resources :reviews, only: [:new, :index]
  end
  
  resources :users, only: [:show]
  

 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
