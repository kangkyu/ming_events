# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

events = Event.create!([
  {
    event_name: "Coffee Conference",
    venue: "Los Angeles",
    date: "2018-05-02",
    description: "Local Roasters bring out and make cups of coffee over and over"
  },
  {
    event_name: "Movie Night",
    venue: "Burbank",
    date: "2015-12-15",
    description: "Come and Watch three movies with price of one movie"
  },
  {
    event_name: "Eating Spree",
    venue: "Chinatown Los Angeles",
    date: "2016-05-03",
    description: "A Hundred Food trucks make a Huge Traffic"
  }])

Task.create!([
  {
    title: "call everyone",
    description: "you don't have to do that.

    simply announce it on the web page. And email everyone."
  },
  {
    title: "reserve location",
    description: "at least, 2 weeks earlier. Set reminder!"
  }])
