Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"

  get "/teste1", to: "main#teste1"
  post "/testerest", to: "main#rest1"


end
