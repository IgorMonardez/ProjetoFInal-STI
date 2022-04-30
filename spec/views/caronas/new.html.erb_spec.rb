require 'rails_helper'

RSpec.describe "caronas/new", type: :view do
  before(:each) do
    assign(:carona, Carona.new(
      departure: "MyString",
      arrival: "MyString",
      price: 1,
      passengers: 1,
      comments: "MyString"
    ))
  end

  it "renders new carona form" do
    render

    assert_select "form[action=?][method=?]", caronas_path, "post" do

      assert_select "input[name=?]", "carona[departure]"

      assert_select "input[name=?]", "carona[arrival]"

      assert_select "input[name=?]", "carona[price]"

      assert_select "input[name=?]", "carona[passengers]"

      assert_select "input[name=?]", "carona[comments]"
    end
  end
end
