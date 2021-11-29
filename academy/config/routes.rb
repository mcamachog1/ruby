Rails.application.routes.draw do
  root "home#index"
  get 'home/index'
  resources :tutorings
  resources :tutors
  resources :students
  resources :parents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
