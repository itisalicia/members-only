Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  
  resources :posts, only: [:new, :create, :index]

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
