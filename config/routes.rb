Rails.application.routes.draw do
  devise_for :users
  resources :products
  root 'products#index'
  post 'users/update_theme', to: 'users#update_theme', as: 'update_theme'
end
