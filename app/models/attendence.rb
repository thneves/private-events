class Attendence < ApplicationRecord
  belongs_to :event_attende, class_name: "User"
  belongs_to :attended_event, class_name: "Event"
end
