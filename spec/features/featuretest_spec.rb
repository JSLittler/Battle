require_relative '../../app.rb'
require 'capybara/rspec'

describe MyApp, type: :feature do
  it 'displays the homepage' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end