Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  resources :products
  resources :clients
  resources :vendas
  resources :servicos

  get 'home/index', as: 'home_index'  # Adicione esta linha

  # ... outras rotas e configurações adicionais ...
end
