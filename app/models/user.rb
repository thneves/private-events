class User < ApplicationRecord
  has_many :subscriptions, foreign_key: :event_creator_id, dependent: :destroy
  has_many :attended_events, through: :subscriptions, dependent: :destroy
  has_many :created_events, foreign_key: :creator_id, class_name: "Event", dependent: :destroy
end
