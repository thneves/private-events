require 'rails_helper'

RSpec.describe 'User login' do
  it 'redirects to index when user sign up' do
    visit '/users/new'
    fill_in 'user[username]', with: 'myname'
    click_on 'Create User'
    expect(current_path).to eql('/sessions/new')
  end

  it 'fails to login user when username is not given' do
    visit '/sessions/new'
    click_on 'Enter'
    expect(current_path).to eql('/users/new')
  end

  it 'logins a user when username is given' do
    visit '/sessions/new'
    fill_in 'username', with: 'myname'
    click_on 'Enter'
    expect(current_path).to eql('/users/new')
  end

  # it "creates a new event" do
    # visit new_event_path
    # fill_in 'event_title', with: 'event title test'
    # fill_in 'event_description', with: 'event description test'
    # fill_in 'event_location', with: 'event location test'
    # fill_in 'event_date', with: Date.parse('2020-12-20')
    # click_on 'Create Event'
  # 
    # expect(current_path).to eql(event_path)
  # end

  # it "Displays all players saved" do
    # event1 = Event.create(description: "event test 1", creator_id: 1, title: "event title 1", location: "my place 1", date: Date.parse('2020-12-20'))
    # 
    # expect(current_path).to eql('/events/#{@event.id}')
    # expect(page).to have_text("Event successfully created")
    # expect(page).to have_text("event title 1")
    # expect(page).to have_text("my place 1")
  # end
end