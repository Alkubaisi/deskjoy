Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  resources :profiles, only: [:show, :edit, :update, :info]

  root to: 'pages#home'
  # get "/dashboard", to: "users#dashboard"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"

  resources :spaces do
    resources :bookings, only: [:index, :show]
    resources :tables, only: [:index]
  end
end
