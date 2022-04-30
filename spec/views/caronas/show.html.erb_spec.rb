require 'rails_helper'

RSpec.describe "caronas/show", type: :view do
  before(:each) do
    @carona = assign(:carona, Carona.create!(
      departure: "Departure",
      arrival: "Arrival",
      price: 2,
      passengers: 3,
      comments: "Comments"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Departure/)
    expect(rendered).to match(/Arrival/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Comments/)
  end
end
