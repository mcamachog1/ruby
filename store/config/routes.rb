Rails.application.routes.draw do
  #root "companies#new"
  #get "/articles", to: "articles#index" 
  resources :games
  resources :books
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
