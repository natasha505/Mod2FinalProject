Rails.application.routes.draw do

    get '/welcome', to: "welcome#index"
    resources :watchlists
    resources :actors
    resources :mov_actors
    resources :movies
    resources :users

    # root to: "users#show"

    get '/login', to: "auth#login"
    post '/login', to: "auth#verify"

    get '/signup', to: "users#new"
    post '/signup', to: "users#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
