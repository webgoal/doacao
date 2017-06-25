require 'rails_helper'

RSpec.describe "necessidades/edit", type: :view do
  before(:each) do
    @necessidade = assign(:necessidade, Necessidade.create!(
      :nome => "MyString",
      :produto => "MyString"
    ))
  end

  it "renders the edit necessidade form" do
    render

    assert_select "form[action=?][method=?]", necessidade_path(@necessidade), "post" do

      assert_select "input[name=?]", "necessidade[nome]"

      assert_select "input[name=?]", "necessidade[produto]"
    end
  end
end
