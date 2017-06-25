require 'rails_helper'

RSpec.describe DonationController, type: :controller do

  describe "GET #view_donation" do
    it "returns http success" do
      get :view_donation
      expect(response).to have_http_status(:success)
    end
  end

end
