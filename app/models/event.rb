class Event < ActiveRecord::Base
  has_many :tasks
  validates :event_name, presence: true
end
