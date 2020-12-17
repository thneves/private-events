class User < ApplicationRecord
  has_many :attendences, foreign_key: :event_attendee_id
  has_many :attended_events, through: :attendences
  has_many :created_posts, foreign_key: :creator_id, class_name: "Event"
end
