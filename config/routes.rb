Rails.application.routes.draw do

  resources :reports, only: [:index, :show, :create, :update, :destroy]
  resources :alerts, only: [:index, :show, :create, :update]
  # resources :alerts
  # resources :reports
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :users
  get "/users/:id", to: "users#show"
  patch "/users/:id", to: "users#update"
  get "/me", to: "users#show"
  post '/signup', to: 'users#create'

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/users", to: "users#index"
end
