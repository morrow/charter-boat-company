Rails.application.routes.draw do

  # admin resources
  constraints(:subdomain => /admin/) do
    namespace :admin do
      # single resource
      resource :directions
      # resources
      resources :boats
      resources :crewmen, :path => :crew
      resources :rates
      resources :info
      resources :contact
      resources :bookings
    end
  end

  # single resource
  resource  :directions

  # resources
  resources :boats
  resources :crewmen, :path => :crew
  resources :rates
  resources :info
  resources :contact
  resources :bookings

  # root
  root to: 'home#index'

end
