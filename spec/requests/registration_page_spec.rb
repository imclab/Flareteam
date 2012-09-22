require "spec_helper"

describe "Registration page" do
  let(:email) { "user@example.com" }
  let(:password) { "password123" }

  it "registers a new user" do
    visit new_user_registration_url
    page.should have_content "Sign up"

    fill_in "Email", with: email
    fill_in "Password", with: password
    fill_in "Password confirmation", with: password

    fill_in "First name", with: "John"  
    fill_in "Last name", with: "Doe"
    fill_in "Organization name", with: "Acme, Co."  
    fill_in "Role in emergencies", with: "Manager"
    fill_in "Mobile phone number", with: "555-555-555"
    fill_in "Landline phone number", with: "555-555-5555"

    fill_in "Street address", with: "123 Evergreen Terrace"
    fill_in "City", with: "Springfield"
    fill_in "State", with: "IL"

    click_on "Sign up"
    page.should have_content "Welcome"
  end
end
