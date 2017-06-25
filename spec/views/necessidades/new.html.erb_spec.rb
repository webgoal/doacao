require 'rails_helper'

RSpec.describe "necessidades/new", type: :view do
  before(:each) do
    assign(:necessidade, Necessidade.new(
      :nome => "MyString",
      :produto => "MyString"
    ))
  end

  it "renders new necessidade form" do
    render

    assert_select "form[action=?][method=?]", necessidades_path, "post" do

      assert_select "input[name=?]", "necessidade[nome]"

      assert_select "input[name=?]", "necessidade[produto]"
    end
  end
end
