Feature: Authenticating users

  In order to use the website
  As a user
  I should be able to sign up & sign in

  Scenario: Signing up
    Given I am on the homepage
    When I sign up
    Then I should see a sign up confirmation
    And I should be logged in

  Scenario: Signing in & Signing out
    Given I am registered
    And I am on the homepage
    When I sign in
    Then I should see the sign in confirmation
    When I sign out
    Then I should see the sign out confirmation

  @omniauth_test
  Scenario: Sign in thru Facebook
    Given I am on the homepage
    When I sign in with Facebook
    Then I should see the Facebook sign in confirmation

  Scenario: User forgot password
    Given I am registered
    And I am on the homepage
    When I reset my password
    Then I should receive a password reset email
