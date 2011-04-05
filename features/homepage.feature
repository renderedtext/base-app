Feature: Viewing application's homepage

  In order to browse rest of the pages
  As a user
  I should be able to visit the application's homepage

  Scenario: View application homepage
    Given I am on the homepage
    Then I should see "Welcome"
