Rails.application.routes.draw do
  resources :roles
  resources :countries
  resources :projects
  resources :people
  get '/people/bycountry/:country_id', to: "people#listbycountry" 
  get '/people/byproject/:project_id', to: "people#listbyproject" 
  get '/people/byrole/:role_id', to: "people#listbyrole"
  get '/people/tags/:country_id/:role_id/:project_id', to: "people#listbyall" 
  get '/people/employees/:id', to: "people#employees"
  get '/people/clients/:id', to: "people#clients"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
