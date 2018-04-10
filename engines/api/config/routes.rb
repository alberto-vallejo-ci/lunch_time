Api::Engine.routes.draw do
  resources :restaurants, only: [:index]
end
