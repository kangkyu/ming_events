require 'rails_helper'

describe 'Event' do
  it "gives error if without title" do
    event = Event.new
    event.valid?
    expect(event.errors[:event_name]).to include("can't be blank")
  end
end