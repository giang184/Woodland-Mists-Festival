require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('visits home page', {:type => :feature}) do
  it('should visit the home page') do
    visit('/')
    expect(page).to have_content('Woodland Mist Festival!')
  end
end

describe('visit a stage', {:type => :feature}) do
  it('visit the right stage') do
    visit('/')
    click_on('Add a new stage?')
    fill_in('stage_name', :with => 'hello world')
    click_on('Go!')
    expect(page).to have_content('hello world')
  end
end