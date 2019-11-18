Rails.application.routes.draw do

  devise_for :users
  root to: 'groups#index'
  get 'dashboard', to: 'pages#dashboard'
  resources :users
  resources :groups do
    resources :bookings, only: [:new, :edit, :create]
    resources :reviews, only: [:show, :new, :create]
  end

  resources :bookings, only: [:show, :destroy]
  resources :reviews, only: [:destroy]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
