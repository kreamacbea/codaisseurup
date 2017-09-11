Rails.application.routes.draw do
  resources :themes
  root "pages#home"

  devise_for :users

  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos, only: [:destroy]

  resources :events do
    resources :registrations, only: [:create]
  end

  namespace :api do
    resources :events
  end
end
