require 'rails_helper'

RSpec.describe "caronas/index", type: :view do
  before(:each) do
    assign(:caronas, [
      Carona.create!(
        departure: "Departure",
        arrival: "Arrival",
        price: 2,
        passengers: 3,
        comments: "Comments"
      ),
      Carona.create!(
        departure: "Departure",
        arrival: "Arrival",
        price: 2,
        passengers: 3,
        comments: "Comments"
      )
    ])
  end

  it "renders a list of caronas" do
    render
    assert_select "tr>td", text: "Departure".to_s, count: 2
    assert_select "tr>td", text: "Arrival".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Comments".to_s, count: 2
  end
end
