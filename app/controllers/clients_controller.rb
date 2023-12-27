class ClientsController < ApplicationController
  def index
    @clients = Client.paginate(page: params[:page], per_page: 10)
  end

  def show
    @client = Client.find(params[:id])
  end


  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path, notice: 'Cliente criado com sucesso.'
    else
      render :new
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to clients_path, notice: 'Cliente atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path, notice: 'Cliente excluído com sucesso.'
  end

  private

  def client_params
    params.require(:client).permit(:name, :email, :phone)
  end
end
