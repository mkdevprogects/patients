Rails.application.routes.draw do
  resources :home, :specializations, only: [:index]
  resources :doctors,:clinics, :diseases, :illnesses, only: [:index, :show]
  resources :illness_requests, only: [:index, :show, :new, :create]

  resources :specializations do
    scope module: :specializations do
      resources :doctors, only: [:index]
    end
  end

  # devise_for :patient
  devise_for :patient, controllers: { registrations: 'patients/registrations' }

  root 'home#index'

end
