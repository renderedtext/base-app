Given /^I am admin$/ do
  @registered_user.make_admin
end

Given /^I am logged in as admin$/ do
  steps %Q{
    Given I am registered
    And I am admin
    And I am on the homepage
    When I sign in
  }
end

Given /^a user with email "([^"]*)" exists$/ do |email|
  @registered_user = create(:user,
                            :email => email,
                            :created_at => 2.days.ago,
                            :last_sign_in_at => 1.day.ago,
                            :updated_at => 5.hours.ago)
end

When /^I edit user with "([^"]*)" email$/ do |email|
  within(:xpath, "//table//tr[contains(., '#{email}')]") do
    find_link('Edit').click
  end
end

When(/^I open admin users screen$/) do
  click_link "Admin"
  click_link "Users"
end

Then(/^I should see myself in admin user list$/) do
  page.should have_content(@registered_user.email)
end

When(/^I admin change user "(.*?)" email to "(.*?)"$/) do |current_email, new_email|
  find_field('Email').value.should eql(current_email)
  fill_in "Email", :with => new_email
  click_button "Update"
end

Then(/^I should see admin user edit confirmation$/) do
  page.should have_content("User successfully updated")
end

Then(/^I should see user "(.*?)" in admin users list$/) do |user_info|
  page.should have_content(user_info)
end

When(/^I admin search for user "(.*?)"$/) do |query|
  fill_in "q_email_cont", :with => query
  click_button "Search"
end

Then(/^admin user search results should include "(.*?)"$/) do |result|
  page.should have_content(result)
end

Then(/^admin user search results should not include "(.*?)"$/) do |result|
  page.should_not have_content(result)
end
