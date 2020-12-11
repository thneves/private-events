class User < ApplicationRecord
  has_many :subscriptions, foreign_key: :event_creator_id
  has_many :attended_events, through: :subscriptions
  has_many :created_events, foreign_key: :creator_id, class_name: "Event"
end
