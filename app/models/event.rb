class Event < ApplicationRecord
  has_many :attendences, foreign_key: :attended_event_id, dependent: :destroy
  has_many :attendees, through: :attendences, source: :event_attende, dependent: :destroy
  belongs_to :creator, class_name: "User"
end