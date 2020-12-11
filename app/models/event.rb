class Event < ApplicationRecord
  has_many :subscriptions, foreign_key: :created_event_id
  has_many :atendees, through: :subscriptions, source: :event_creator
  belongs_to :creator, class_name: "User"
end
