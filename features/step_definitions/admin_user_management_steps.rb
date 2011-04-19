Given /^a user with email "([^"]*)" exists$/ do |email|
  @registered_user = Factory(:user, :email => email, :created_at => 2.days.ago, :last_sign_in_at => 1.day.ago, :updated_at => 5.hours.ago)
end

Given /^I fall asleep for (\d+) seconds$/ do |arg1|
  sleep(arg1.to_i)
end

When /^I edit user with "([^"]*)" email$/ do |email|
  within(:xpath, "//table//tr[contains(., '#{email}')]") do
    find_link('Edit').click
  end
end
