Rails.application.routes.draw do
  get 'static_pages/about'

  get 'static_pages/home'

  root 'static_pages/home#Index'

  resources :years
  resources :owners
  resources :car_years
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
