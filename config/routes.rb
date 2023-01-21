Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :users
  get "/users/:id", to: "users#show"
  patch "/users/:id", to: "users#update"
  get "/users", to: "users#index"
end
