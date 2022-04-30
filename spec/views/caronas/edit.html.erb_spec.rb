require 'rails_helper'

RSpec.describe "caronas/edit", type: :view do
  before(:each) do
    @carona = assign(:carona, Carona.create!(
      departure: "MyString",
      arrival: "MyString",
      price: 1,
      passengers: 1,
      comments: "MyString"
    ))
  end

  it "renders the edit carona form" do
    render

    assert_select "form[action=?][method=?]", carona_path(@carona), "post" do

      assert_select "input[name=?]", "carona[departure]"

      assert_select "input[name=?]", "carona[arrival]"

      assert_select "input[name=?]", "carona[price]"

      assert_select "input[name=?]", "carona[passengers]"

      assert_select "input[name=?]", "carona[comments]"
    end
  end
end
