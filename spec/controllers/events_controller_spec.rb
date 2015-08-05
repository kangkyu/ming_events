require 'rails_helper'

RSpec.describe EventsController, :type => :controller do
  describe "GET index" do
    it "assigns all events as @events" do
      @event = Event.create!(
        event_name: "Coffee Conference",
        venue: "Los Angeles",
        description: "Local Roasters bring out and make cups of coffee over and over",
        date: "2018-05-02"
      )
      get :index
      expect(assigns(:events)).to eq([@event])

      expect(response.status).to eq(200)
      expect(response).to render_template("events/index")
    end
  end
  describe "GET show" do
    it "assigns the requested event as @event" do
      @event = Event.create!(
        event_name: "Coffee Conference",
        venue: "Los Angeles",
        description: "Local Roasters bring out and make cups of coffee over and over",
        date: "2018-05-02"
      )
      get :show, id: @event
      expect(response).to render_template('show')
    end
  end
  # describe "GET new" do
  #   it "assigns a new event as @event"
  # end
  # describe "GET edit" do
  #   it "assigns the requested event as @event"
  # end
  # describe "POST create"
  #   context "with valid params" do
  #     it "creates a new Event"
  #     it "assigns a newly created event as @event"
  #     it "redirects to the created event"
  #   end
  #   context "with invalid params" do
  #     it "assigns a newly created but unsaved event as @event"
  #     it "re-renders the 'new' template"
  #   end
  # describe "PUT update" do
  #   context "with valid params" do
  #     it "updates the requested event"
  #     it "assigns the requested event as @event"
  #     it "redirects to the event"
  #   end
  #   context "with invalid params" do
  #     it "assigns the event as @event"
  #     it "re-renders the 'edit' template"
  #   end
  # end
  # describe "DELETE destroy" do
  #   it "destroys the requested event"
  #   it "redirects to the events list"
  # end
end
