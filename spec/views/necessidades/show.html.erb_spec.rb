require 'rails_helper'

RSpec.describe "necessidades/show", type: :view do
  before(:each) do
    @necessidade = assign(:necessidade, Necessidade.create!(
      :nome => "Nome",
      :produto => "Produto"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Produto/)
  end
end
