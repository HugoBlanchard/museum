Rails.application.routes.draw do
  resources :countries
  resources :masterpieces
  root to: 'countries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
