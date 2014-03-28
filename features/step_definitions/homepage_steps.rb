Given(/^I am on the homepage$/) do
  visit("/")
end

Then(/^I should see the welcome message$/) do
  page.should have_content("Welcome")
end
