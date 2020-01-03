Rails.application.routes.draw do

  get '/', to: "welcome#index"

  resources :users#, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :mov_actors
  # resources :watchlists, only: [:index, :show, :new, :create, :edit, :update]
  resources :watchlists
  resources :movies#, only: [:index, :show, :new, :create, :destroy]
  resources :actors

    # root to: "users#show"
    get '/login', to: "auth#login"
    post '/login', to: "auth#verify"
    get '/logout', to: 'auth#logout', as: 'logout'

    get '/signup', to: "users#new"
    post '/signup', to: "users#create"

    # get '/login', to: 'sessions#login'
    # post '/login', to: 'sessions#verify'
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


  