Rails.application.routes.draw do
  devise_for :users
  root to: "cars#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :cars do
    resources :bookings, only: %i[new create destroy show]
  end
  resources :bookings, only: :index
end
