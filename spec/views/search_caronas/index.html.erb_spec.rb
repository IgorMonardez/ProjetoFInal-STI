require 'rails_helper'

RSpec.describe "search_caronas/index", type: :view do
  before(:each) do
    assign(:search_caronas, [
      SearchCarona.create!(
        departure: "Departure",
        arrival: "Arrival"
      ),
      SearchCarona.create!(
        departure: "Departure",
        arrival: "Arrival"
      )
    ])
  end

  it "renders a list of search_caronas" do
    render
    assert_select "tr>td", text: "Departure".to_s, count: 2
    assert_select "tr>td", text: "Arrival".to_s, count: 2
  end
end
