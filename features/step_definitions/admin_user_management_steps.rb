Given /^a user with email "([^"]*)" exists$/ do |email|
  @registered_user = Factory(:user, :email => email, :created_at => 2.days.ago, :last_sign_in_at => 1.day.ago, :updated_at => 5.hours.ago)
end
