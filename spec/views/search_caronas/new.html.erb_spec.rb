require 'rails_helper'

RSpec.describe "search_caronas/new", type: :view do
  before(:each) do
    assign(:search_carona, SearchCarona.new(
      departure: "MyString",
      arrival: "MyString"
    ))
  end

  it "renders new search_carona form" do
    render

    assert_select "form[action=?][method=?]", search_caronas_path, "post" do

      assert_select "input[name=?]", "search_carona[departure]"

      assert_select "input[name=?]", "search_carona[arrival]"
    end
  end
end
