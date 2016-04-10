Rails.application.routes.draw do
  root 'dashboard#show'

  resource :dashboard, only: :show
  resources :restaurants
end
