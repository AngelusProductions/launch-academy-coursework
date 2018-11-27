Rails.application.routes.draw do
  root "cars#index"

  resources :cars
  resources :horses
  resources :trains
  resources :airplanes
end
