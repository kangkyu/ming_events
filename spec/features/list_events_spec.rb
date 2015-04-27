require 'rails_helper'

describe "Viewing the list of events", type: :feature do
  before do
    @event1 = Event.create(event_name: "Coffee Conference",
                          venue: "Los Angeles",
                          description: "Local Roasters bring out and make cups of coffee over and over",
                          date: "2018-05-02")

    @event2 = Event.create(event_name: "Movie Night",
                          venue: "Burbank",
                          description: "Come and Watch three movies with price of one movie",
                          date: "2015-12-15")

    @event3 = Event.create(event_name: "Eating Spree",
                          venue: "Chinatown Los Angeles",
                          description: "A Hundred Food trucks make a Huge Traffic",
                          date: "2016-05-03")
  end

  it "shows the events" do
    visit events_url

    expect(page).to have_text("3 Events")
    expect(page).to have_text(@event1.event_name)
    expect(page).to have_text(@event2.event_name)
    expect(page).to have_text(@event3.event_name)

    expect(page).to have_text(@event1.event_name)
    expect(page).to have_text(@event1.venue)
    expect(page).to have_text(@event1.description[0..17])
    expect(page).to have_text(@event1.date)
  end
end


