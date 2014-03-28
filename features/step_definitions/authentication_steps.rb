Given /^I am registered$/ do
  @registered_user = create(:user, :email => "john@doe.com")
end

When(/^I sign up$/) do
  click_link "Sign up"
  fill_in "Email", :with => "john@doe.com"
  fill_in "Password", :with => "password"
  fill_in "Password confirmation", :with => "password"
  click_button "Sign up"
end

Then(/^I should see a sign up confirmation$/) do
  page.should have_content("You have signed up successfully.")
end

Then(/^I should be logged in$/) do
  page.should have_content("Account settings")
  page.should have_content("Sign out")
end

When(/^I sign in$/) do
  click_link "Sign in"
  fill_in "Email", :with => "john@doe.com"
  fill_in "Password", :with => "password"
  click_button "Sign in"
end

Then(/^I should see the sign in confirmation$/) do
  page.should have_content("Signed in successfully.")
end

When(/^I sign out$/) do
  click_link "Sign out"
end

Then(/^I should see the sign out confirmation$/) do
  page.should have_content("Signed out successfully.")
end

When(/^I sign in with Facebook$/) do
  click_link "Sign in with Facebook"
end

Then(/^I should see the Facebook sign in confirmation$/) do
  page.should have_content("Successfully authorized from Facebook account.")
end

When(/^I reset my password$/) do
  click_link "Sign in"
  click_link "Forgot your password?"
  fill_in "Email", :with => "john@doe.com"
  click_button "Send me instructions to reset password"
end

Then(/^I should receive a password reset email$/) do
  steps %Q{
    Then "john@doe.com" should receive an email
  }
end
