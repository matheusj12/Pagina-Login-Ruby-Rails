# app/controllers/vendas_controller.rb
class VendasController < ApplicationController
  def index
    @vendas = Venda.all
  end

  def show
    @venda = Venda.find(params[:id])
  end

  def new
    @venda = Venda.new
    @venda.order_items.build
  end

  def create
    @venda = Venda.new(venda_params)
    if @venda.save
      redirect_to @venda, notice: 'Venda criada com sucesso.'
    else
      render :new
    end
  end

  def destroy
    @venda = Venda.find(params[:id])
    @venda.destroy
    redirect_to vendas_path, notice: 'Venda excluída com sucesso.'
  end

  def search_products
    @products = Produto.where('name LIKE ?', "%#{params[:q]}%")
    render json: @products
  end

  private

  def venda_params
    params.require(:venda).permit(:funcionario_id, :client_id, :data, order_items_attributes: [:product_id, :quantidade])
  end

  def edit
    @venda = Venda.find(params[:id])
  end

  def search_products
    @products = Produto.where('name LIKE ?', "%#{params[:q]}%")
    render json: @products
  end

  def edit
    @venda = Venda.find(params[:id])
  end
end
