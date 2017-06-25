class ProdutosController < ApplicationController
  def index
  end
  def create
    @produto = Produtos.new(params[:produtos])

    @produto.save
    redirect_to @produto
  end
end
