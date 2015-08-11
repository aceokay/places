require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('places execution path', {:type => :feature}) do
  it('takes a place and gives a success message') do
    visit('/')
    fill_in('location', :with => 'Omaha')
    click_button('GO!')
    expect(page).to have_content('Your place has been added.')
  end

  it('takes a location and gives a success message and follows back to homepage') do
    visit('/')
    fill_in('location', :with => 'New Jersey')
    click_button('GO!')
    expect(page).to have_content('Your place has been added.')
    click_link_or_button('Back')
    expect(page).to have_content('New Jersey')
  end
end
