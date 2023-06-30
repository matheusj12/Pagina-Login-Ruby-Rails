class HomeController < ApplicationController
  def index
    @produto = [
      {
        name: 'Produtos Cadastrados',
        data: Product.group_by_day(:created_at).count
      }
    ]
  end
end
