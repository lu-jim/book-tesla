Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :v1, defaults: { format: :json } do
    resources :cars
    resources :users
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
