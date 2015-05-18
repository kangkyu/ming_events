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

  it "redirect to event detail page" do
    visit events_url
    click_on "#{@event1.event_name}"

    expect(current_path).to eq(event_path(@event1))
    expect(page).to have_text(@event1.description)
  end

  it "has its tasks on the detail page" do
    visit event_url(@event1)

    Task.create!([
      {
        title: "call everyone",
        description: "you don't have to do that.

        simply announce it on the web page. And email everyone.",
        event_id: @event1
      },
      {
        title: "reserve location",
        description: "at least, 2 weeks earlier. Set reminder!",
        event_id: @event1
      }])

    @event1.tasks.each do |task|
      expect(page).to have_text(task.title)
    end
  end
end


