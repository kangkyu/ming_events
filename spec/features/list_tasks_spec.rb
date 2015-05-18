require 'rails_helper'

describe 'viewing the list of tasks' do
  before do
    @event1 = Event.create!(
      event_name: "Coffee Conference",
      venue: "Los Angeles",
      description: "Local Roasters bring out and make cups of coffee over and over",
      date: "2018-05-02")    
    @tasks = Task.create!([
      {
        title: "call everyone",
        description: "you don't have to do that.

        simply announce it on the web page. And email everyone.",
        event_id: @event1.id
      },
      {
        title: "reserve location",
        description: "at least, 2 weeks earlier. Set reminder!",
        event_id: @event1.id
      }])
  end

  it "shows all the tasks on one page" do
    visit tasks_url

    @tasks.each do |task|
      expect(page).to have_text(task.title)
      expect(page).to have_text(task.description)
      expect(page).to have_text(task.event.event_name)
    end
  end

  it "redirect to event detail page" do
    visit tasks_url
    first(:link, @event1.event_name).click
    # http://stackoverflow.com/questions/13132506/capybara-ambiguity-resolution

    expect(current_path).to eq(event_path(@event1))
    expect(page).to have_text(@event1.description)
  end
end
