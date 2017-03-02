Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'pages#home'
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/dashboard", to: "users#dashboard"
  resources :spaces do
    resources :bookings, only: [:index, :show]
    resources :tables, only: [:index]
  end
  resources :profiles, only: [:index, :show, :edit, :update]
end
