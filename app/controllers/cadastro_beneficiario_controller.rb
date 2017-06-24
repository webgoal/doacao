class CadastroBeneficiarioController < ApplicationController
  def index
    @beneficiarios = Beneficiario.all
  end
end
