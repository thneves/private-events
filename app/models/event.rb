class Event < ApplicationRecord
  has_many :subscriptions, foreign_key: :created_event_id, dependent: :destroy
  has_many :atendees, through: :subscriptions, source: :event_creator, dependent: :destroy
  belongs_to :creator, class_name: "User"
end
