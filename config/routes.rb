Rails.application.routes.draw do
  resources :books


  devise_for :users
  resources :users
  resources :products, only: [:show]
  resources :clients
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :invoices, only: [:show]
end
