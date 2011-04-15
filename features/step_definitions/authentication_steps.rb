Given /^I have a user account$/ do
  @registered_user = Factory(:user, :email => "john@doe.com")
end
