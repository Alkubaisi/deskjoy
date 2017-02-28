Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: "users#dashboard"
  get "/about", to: "pages#about"
  resources :spaces
    resources :tables, only: [:index, :show] do
      resources :bookings, only: [:index, :show]
    end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
