Rails.application.routes.draw do
  devise_for :users
  resources :items
  resources :comments
  resources :payments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "items#index"
end
