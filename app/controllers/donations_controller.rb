class DonationsController < ApplicationController
  def show
    @lista = Donation.all
  end

  def new
  end

  def create
    @donation = Donation.new(donation_params)
    @donation.save
    redirect_to new_donations_path
  end

  private
   def donation_params
     params.require(:donation).permit(:item_name, :item_category, :item_description, :item_qt, :perishable, :item_validity)
   end
end
