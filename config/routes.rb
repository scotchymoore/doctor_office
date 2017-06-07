Rails.application.routes.draw do
  root 'doctors#index'

  resources :patients
  resources :doctors
  resources :doctor_patients, only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
