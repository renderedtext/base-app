Given /^I am registered$/ do
  @registered_user = Factory(:user, :email => "john@doe.com")
end
