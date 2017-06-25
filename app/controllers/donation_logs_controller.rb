class DonationLogsController < ApplicationController
  def index

  end

  def create
    @donation_log = DonationLog.new(in_need_id: params[:in_need_id])
    if @donation_log.save
      redirect_to in_needs_path
    else
      render :index
    end
  end

 #
 #  def new
 #    @in_need = InNeed.new
 #    render :new
 #  end
 #
 #
 # private
 #  def params_inneed
 #    params.require(:in_need).permit(:name, :cpf, :birthdate, :address, :phone, :n_members, :income, :items)
 #  end
end
