Rails.application.routes.draw do
  root 'home#show'

  resource :searches, only: :create
  resource :home, only: :show
  resources :restaurants
end
