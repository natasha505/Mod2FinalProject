Rails.application.routes.draw do

# root#homepage

  resources :watchlists
  resources :actors
  resources :mov_actors
  resources :movies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
