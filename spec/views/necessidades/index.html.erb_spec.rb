require 'rails_helper'

RSpec.describe "necessidades/index", type: :view do
  before(:each) do
    assign(:necessidades, [
      Necessidade.create!(
        :nome => "Nome",
        :produto => "Produto"
      ),
      Necessidade.create!(
        :nome => "Nome",
        :produto => "Produto"
      )
    ])
  end

  it "renders a list of necessidades" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Produto".to_s, :count => 2
  end
end
