Rails.application.routes.draw do
  resources :masterpieces
  root to: 'masterpieces#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
