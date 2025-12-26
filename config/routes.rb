Rails.application.routes.draw do
  resources :gestao_beneficios
  resources :automacao_tarefas
  resources :projetos
  resources :relatorios
  resources :cadastro_ativos
  resources :ponto_eletronicos
  resources :processo_admissaos
  resources :folha_pagamentos
  resources :pedido_vendas
  resources :consulta_estoques
  resources :fornecedors
  resources :pedido_compras
  resources :ordem_pagamentos
  resources :gerenciamento_contas_bancaria
  resources :titulos_baixados
  resources :titulos_em_abertos
  resources :tesouraria
  resources :fluxo_caixas
  resources :conta_recebers
  resources :conta_pagars
  resources :compras
  resources :departamentos
  root 'home#index'
  

  devise_for :users

  resources :products do
    collection do
      get 'search'  # Definido o caminho para a pesquisa de produtos
    end
  end

  resources :clients
  resources :vendas
  resources :servicos
  resources :funcionarios
  resources :automacao_tarefas

  get 'home/index', as: 'home_index'
end
