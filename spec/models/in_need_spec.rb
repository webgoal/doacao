require 'rails_helper'

RSpec.describe InNeed, type: :model do
  describe "InNeed Priorize" do
    let!(:in_need){FactoryGirl.create(:in_need, income: 10, n_members: 2)}
    let!(:in_need1){FactoryGirl.create(:in_need, income: 10, n_members: 5)}
    let!(:in_need2){FactoryGirl.create(:in_need, income: 20, n_members: 1)}
    let!(:in_need3){FactoryGirl.create(:in_need, income: 20, n_members: 1, flag_donation: true)}
    context "priorized response" do
      it { expect(InNeed.priorized).to eq([in_need1,in_need,in_need2]) }
    end
  end
end
