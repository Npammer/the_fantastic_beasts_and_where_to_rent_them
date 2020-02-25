Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users do
    resources :beasts, only: [:new, :create]
  end

  resources :beasts, except: [:new] do
    resources :bookings, only: [:new, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
