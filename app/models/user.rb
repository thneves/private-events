class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }

  has_many :attendences, foreign_key: :event_attende_id, dependent: :destroy
  has_many :attended_events, through: :attendences, dependent: :destroy
  has_many :created_events, foreign_key: :creator_id, class_name: "Event", dependent: :destroy
end
