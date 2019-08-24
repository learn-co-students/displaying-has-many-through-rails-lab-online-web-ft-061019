Rails.application.routes.draw do
  get 'appointments/show'

  get 'appointments/index'

  get 'appointments/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :patients
  resources :appointments, only: [:show]
end
