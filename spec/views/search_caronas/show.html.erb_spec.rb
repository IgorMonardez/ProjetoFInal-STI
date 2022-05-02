require 'rails_helper'

RSpec.describe "search_caronas/show", type: :view do
  before(:each) do
    @search_carona = assign(:search_carona, SearchCarona.create!(
      departure: "Departure",
      arrival: "Arrival"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Departure/)
    expect(rendered).to match(/Arrival/)
  end
end
