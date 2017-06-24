class ListaPrioridadeController < ApplicationController
  def index
    @beneficiarios = Beneficiario.order(:qtde_pessoas_vulneraveis).order(:renda)
  end
end
