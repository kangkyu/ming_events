require 'rails_helper'

describe "Viewing an individual event" do
  before do
    @event1 = Event.create(event_name: "Coffee Conference",
                          venue: "Los Angeles",
                          description: "Local Roasters bring out and make cups of coffee over and over",
                          date: "2018-05-02")
  end

  it "shows the event details" do
    visit event_url(@event1.id)

    expect(page).to have_text(@event1.event_name)
    expect(page).to have_text(@event1.venue)
    expect(page).to have_text(@event1.description)
    expect(page).to have_text(@event1.date)
  end
end
