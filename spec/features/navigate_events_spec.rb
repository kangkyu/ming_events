require 'rails_helper'

describe "Event navigation" do
  
  it "allows navigation from the show page to index listing" do
    event = Event.create(event_name: "Coffee Conference",
                          venue: "Los Angeles",
                          description: "Local Roasters bring out and make cups of coffee over and over",
                          date: "2018-05-02")

    visit event_url(event)
    click_link "All Events"
    expect(current_path).to eq(events_path)
  end

  it "opens each event page through event name link" do
    event = Event.create(event_name: "Coffee Conference",
                          venue: "Los Angeles",
                          description: "Local Roasters bring out and make cups of coffee over and over",
                          date: "2018-05-02")

    visit events_url
    click_link event.event_name
    expect(current_path).to eq(event_path(event))
  end
end