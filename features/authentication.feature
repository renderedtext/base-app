Feature: Authenticating users

  In order to use the website
  As a user
  I should be able to sign up & sign in

  Scenario: Signing up
    Given I am on the homepage
    When I follow "Sign up"
    And I fill in "Email" with "vladimir@renderedtext.com"
    And I fill in "Password" with "mypass"
    And I fill in "Password confirmation" with "mypass"
    And I press "Sign up"
    Then I should see "You have signed up successfully."
