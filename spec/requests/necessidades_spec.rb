require 'rails_helper'

RSpec.describe "Necessidades", type: :request do
  describe "GET /necessidades" do
    it "works! (now write some real specs)" do
      get necessidades_path
      expect(response).to have_http_status(200)
    end
  end
end
