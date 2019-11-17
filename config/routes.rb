Rails.application.routes.draw do

  devise_for :users
  root to: 'groups#index'
  resources :users
  resources :groups do
    resources :sessions, only: [:new, :edit, :create]
    resources :reviews, only: [:show, :new, :create]
  end

  resources :sessions, only: [:show, :destroy]
  resources :reviews, only: [:destroy]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
