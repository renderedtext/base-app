Given /^I am registered$/ do
  @registered_user = create(:user, :email => "john@doe.com")
end

Given /^I am admin$/ do
  @registered_user.make_admin
end

Given /^I am logged in as admin$/ do
  steps %Q{
    Given I am registered
    And I am admin
    And I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password"
    And I press "Sign in"
  }
end

When /^I fill in password fields with "(.*?)"$/ do |value|
  find("#user_password").set(value)
  find("#user_password_confirmation").set(value)
end
