class HomeController < ApplicationController
  def index
    @produtos = Product.all
    @produto_counts = @produtos.group(:name).count
    
    # Estatísticas para o dashboard
    @total_clientes = Client.count
    @total_produtos = Product.count
    @total_vendas = Venda.count rescue 0
    @total_funcionarios = Funcionario.count rescue 0
    
    # Produtos recentes (últimos 5)
    @produtos_recentes = Product.order(created_at: :desc).limit(5)
    
    # Se não existir nenhum produto, criar dados de exemplo para o gráfico
    if @produto_counts.empty?
      @produto_counts = {
        "Produto Exemplo 1" => 1,
        "Produto Exemplo 2" => 1
      }
    end
  end
end
