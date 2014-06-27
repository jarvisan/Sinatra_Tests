require './app'
require 'capybara/rspec'

Capybara.app = Sinatra::Application

feature "fill form" do
  scenario "enters max" do
    visit '/'
    fill_in 'inputNumber', :with => '45'
    choose('plain')
    click_button('Submit')
    expect(page).to have_content '13'
  end
end 
