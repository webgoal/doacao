class ProdutosController < ApplicationController
  def index
  end
  def create
    @produto = Produtos.new(params[:pro])
  end
end
