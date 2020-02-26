Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users
  root to: 'pages#home'

  resources :users do
    resources :beasts, only: [:new, :create]
    resources :bookings, only: [:index]
  end

  resources :beasts, except: [:new] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except: [:index, :new, :create] do
   resources :reviews, only: [:new, :create]
  end

  # post "/beasts/:beast_id/bookings"  "bookings#create", as: :create_forum
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
