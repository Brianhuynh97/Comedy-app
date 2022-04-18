Rails.application.routes.draw do
  devise_for :users
  root to: 'shows#index'

  resources :shows do
    resources :reviews, only: %i[new create edit update]
    resources :bookings, only: %i[new create]
  end
  resources :reviews, only: :destroy
  resources :bookings, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
