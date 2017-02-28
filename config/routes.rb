Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: "users#dashboard"
  get "/about", to: "pages#about"
  resources :spaces
    resources :tables, only: [:index, :show] do
      resources :bookings, only: [:index, :show]
    end
end
