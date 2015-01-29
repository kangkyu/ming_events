require 'rails_helper'

describe "Viewing the list of events" do
  before do
    movie1 = Event.create(event_name: "Iron Man",
                          venue: "Los Angeles",
                          description: "Tony Stark builds an armored suit to fight the throes of evil",
                          date: "2018-05-02")

    movie2 = Event.create(event_name: "Superman",
                          venue: "Burbank",
                          description: "Clark Kent grows up to be the greatest super-hero",
                          date: "2015-12-15")

    movie3 = Event.create(event_name: "Spider-Man",
                          venue: "Los Angeles",
                          description: "Peter Parker gets bit by a genetically modified spider",
                          date: "2016-05-03")
  end

  it "shows the name of events" do
    visit events_url
    expect(page).to have_text("3 Events")
  end
end


