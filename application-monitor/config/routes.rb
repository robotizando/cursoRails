Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"

  get "/teste1", to: "main#teste1"
  post "/testerest", to: "main#rest1"
  put "" , to: "main#rest1"
  delete "" , to: "main#rest1"

  get "/monitor1", to: "main#monitoraRobotizando"

end
