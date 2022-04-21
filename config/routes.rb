Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/home", to: "pages#home"
  get "/lists", to: "pages#lists"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/feedback", to: "pages#feedback"

  resources :shows do
    resources :reviews, only: %i[new create]
    resources :bookings, only: %i[new create]
  end
  resources :reviews, only: %i[destroy update]
  resources :bookings, only: :destroy


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
