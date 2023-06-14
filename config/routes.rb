Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :restaurants do
    resources :reviews, only: %i[index new create]
  end
  resources :reviews, only: %i[index show edit update destroy]
  root to: 'restaurants#index'
end
