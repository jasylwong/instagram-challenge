require 'rails_helper'

RSpec.feature "Log in", type: :feature do
  scenario "User can log in" do
    visit "/login"
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    click_button "Submit"
    expect(page).to have_link("New post")
  end
end