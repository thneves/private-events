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
end
