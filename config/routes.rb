Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :clients

  root 'clients#index'  # Define a rota raiz para a action 'index' do ClientsController

  # ... outras rotas e configurações adicionais ...
end
