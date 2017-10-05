Rails.application.routes.draw do
  resources :home, :specializations, only: [:index]
  resources :doctors,:clinics, :diseases, :illnesses, only: [:index, :show]
  resources :illness_requests, only: [:new, :create]

  resources :specializations do
    scope module: :specializations do
      resources :doctors, only: [:index]
    end
  end

  devise_for :patient

  root 'home#index'

end
