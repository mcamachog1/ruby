Rails.application.routes.draw do
  root "articles#index"
  resources :articles do 
    resources :comments
  end
  
  get "inicio/:name", to: "inicio#show"
  get '/inicio', to: "inicio#index"
  get '/inicio/maryvi', to: "inicio#maryvi"
  get "/newyear", to: "newyear#index"
  resources :task
end
