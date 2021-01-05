class Attendence < ApplicationRecord
  # validates_uniqueness_of :user, scope: :event

  belongs_to :event_attende, class_name: 'User'
  belongs_to :attended_event, class_name: 'Event'
end
