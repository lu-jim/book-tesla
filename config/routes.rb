Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }
  namespace :v1, defaults: { format: :json } do
    resources :cars
    resources :users
    resources :bookings, only: %i[index update destroy create]
  end

  get '/member-data', to: 'members#show'
end
