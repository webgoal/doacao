class DonationsController < ApplicationController
  def view_donation
    @elements = ["a","b"]
  end

  def show
    @lista = Donation.all
  end
end
