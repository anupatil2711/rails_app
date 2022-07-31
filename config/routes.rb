Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #get '/index' , to: "reports#index"
  get '/city1' , to: "reports#city1" 
  get '/product' , to: "reports#product" 
  root "reports#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
