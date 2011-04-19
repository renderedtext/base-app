Feature: Authenticating users

  In order to use the website
  As a user
  I should be able to sign up & sign in

  Scenario: Signing up
    Given I am on the homepage
    When I follow "Sign up"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Sign up"
    Then I should see "You have signed up successfully."

  Scenario: Signing in & Signing out
    Given I am registered
    And I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should see "Signed in successfully."
    Given I am on the homepage
    When I follow "Sign out"
    Then I should see "Signed out successfully."

@omniauth_test
  Scenario: Sign in thru Facebook
    Given I am on the homepage
    And I follow "Sign in with Facebook"
    Then I should see "Successfully authorized from Facebook account."

  Scenario: User forgot password
    Given I am registered
    And I am on the homepage
    And I follow "Sign in"
    And I follow "Forgot your password?"
    When I fill in "Email" with "john@doe.com"
    And I press "Send me reset password instructions"
    Then "john@doe.com" should receive an email
