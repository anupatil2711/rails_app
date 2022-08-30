Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/index' , to: "reports#index"
  get '/city1' , to: "reports#city1" 
  get '/orderreport' , to: "reports#orderreport" 
  get '/charts' , to: "reports#charts"
  get '/tab' , to: "reports#tab" 
  get '/product' , to: "products#product" 
  get '/main' , to: "products#main" 
  root "products#main"

  # Defines the root path route ("/")
  # root "articles#index"
end
