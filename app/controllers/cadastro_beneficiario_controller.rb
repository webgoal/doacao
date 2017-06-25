class CadastroBeneficiarioController < ApplicationController
  def index
    @beneficiarios = Beneficiario.all
  end

  def new
  end

  def create
    @beneficiario = Beneficiario.new(t_params)

    respond_to do |format|
      if @t.save
        format.html { redirect_to @beneficiario, notice: 'T was successfully created.' }
        format.json { render :show, status: :created, location: @t }
      else
        format.html { render :new }
        format.json { render json: @t.errors, status: :unprocessable_entity }
      end
    end
  end

    private
    def necessitado_params
      params.require(:beneficiario).permit(:nome, :idade, :endereco, :qtde_pessoas_familia, :renda, :qtde_pessoas_vulneraveis, :telefone)
    end
end
