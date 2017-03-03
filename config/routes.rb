Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'pages#home'
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/dashboard", to: "users#dashboard"

  resources :profiles, only: [:show, :edit, :update]

  resources :spaces do
    resources :bookings, only: [:create]
    resources :tables, only: [:index, :create, :edit, :update, :new]
  end
end
