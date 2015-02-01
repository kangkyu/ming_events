require 'rails_helper'

describe "Viewing the list of events" do
  before do
    @event1 = Event.create(event_name: "Iron Man",
                          venue: "Los Angeles",
                          description: "Tony Stark builds an armored suit to fight the throes of evil",
                          date: "2018-05-02")

    @event2 = Event.create(event_name: "Superman",
                          venue: "Burbank",
                          description: "Clark Kent grows up to be the greatest super-hero",
                          date: "2015-12-15")

    @event3 = Event.create(event_name: "Spider-Man",
                          venue: "Los Angeles",
                          description: "Peter Parker gets bit by a genetically modified spider",
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

  it "opens each event page through event name link" do
    visit events_url
    click_link @event1.event_name
    expect(page).to have_text(@event1.event_name)
  end
end


