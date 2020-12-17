class Event < ApplicationRecord
  has_many :attendences, foreign_key: :attended_event_id
  has_many :attendees, through: :attendences, source: :event_attendee
  belongs_to :creator, class_name: "User"
end
