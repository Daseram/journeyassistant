Rails.application.routes.draw do
  resources :passengers
  resources :vehicles
  resources :routes
  devise_for :users

  root 'home#index'

end
