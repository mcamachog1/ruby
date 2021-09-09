Rails.application.routes.draw do
  resources :roles
  resources :countries
  resources :projects

  resources :people do
    collection do
      get 'employees'
      get 'clients'
    end
  end

#  resources :people do
#    get 'employees', on: :collection
#    get 'clients', on: :collection
#  end


  get '/countries/page/:page_id', to: "countries#countrypage" 
  get '/people/bycountry/:country_id', to: "people#listbycountry" 
  get '/people/byproject/:project_id', to: "people#listbyproject" 
  get '/people/byrole/:role_id', to: "people#listbyrole"
  get '/people/tags/:country_id/:role_id/:project_id', to: "people#listbyall" 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
