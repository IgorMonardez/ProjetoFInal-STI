require 'rails_helper'

RSpec.describe "search_caronas/edit", type: :view do
  before(:each) do
    @search_carona = assign(:search_carona, SearchCarona.create!(
      departure: "MyString",
      arrival: "MyString"
    ))
  end

  it "renders the edit search_carona form" do
    render

    assert_select "form[action=?][method=?]", search_carona_path(@search_carona), "post" do

      assert_select "input[name=?]", "search_carona[departure]"

      assert_select "input[name=?]", "search_carona[arrival]"
    end
  end
end
