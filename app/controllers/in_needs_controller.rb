class InNeedsController < ApplicationController
  def create
    @in_need = InNeed.new(params_inneed)
    if @in_need.save
      redirect_to in_needs_path
    else
      render :new
    end
  end

  def new
    @in_need = InNeed.new
    render :new
  end

  def index
    @in_needs = InNeed.priorized
  end

private
  def params_inneed
    params.require(:in_need).permit(:name, :cpf, :birthdate, :address, :phone, :n_members, :income, :items, :flag_donation)
  end
end
