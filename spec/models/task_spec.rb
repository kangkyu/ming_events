require 'rails_helper'

RSpec.describe Task, :type => :model do
  it "has no validation" do
    @task = Task.new
    expect(@task.valid?).to be_truthy
  end

  it "saves assigned attributes" do
    tasks = Task.create!([
      {
        title: "call everyone",
        description: "you don't have to do that.

        simply announce it on the web page. And email everyone."
      },
      {
        title: "reserve location",
        description: "at least, 2 weeks earlier. Set reminder!"
      }])
    expect(Task.count).to eq(2)
  end
end
