require 'rails_helper'

RSpec.describe 'Attendence' do
  it 'is not valid if user id is not provided' do
    user = User.create(username: 'thisisatest')
    event = Event.create(title: 'Event', creator_id: user.id)
    expect(Attendence.new(attended_event_id: event.id)).to_not be_valid
  end

  it 'is not valid if event id is not provided' do
    user = User.create(username: 'thisisatest')
    expect(Attendence.new(event_attende_id: user.id)).to_not be_valid
  end

  it 'is valid if event and user id are provided' do
    user = User.create(username: 'thisisatest')
    event = Event.create(title: 'Event', location: 'test', description: 'test', creator_id: user.id)
    expect(Attendence.new(attended_event_id: event.id, event_attende_id: user.id)).to be_valid
  end
end
