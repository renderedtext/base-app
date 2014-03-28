Feature: Admin - user accounts

  So that I can manage users
  As an admin
  I want to be able to access users thru admin interface

  Scenario: Listing users
    Given I am logged in as admin
    When I open admin users screen
    Then I should see myself in admin user list

  Scenario: Editing a user
    Given a user with email "mark@example.com" exists
    And a user with email "peter@example.com" exists
    And I am logged in as admin
    When I open admin users screen
    And I edit user with "mark@example.com" email
    And I admin change user "mark@example.com" email to "mark@newdomain.com"
    Then I should see admin user edit confirmation
    And I should see user "mark@newdomain.com" in admin users list

  Scenario: Searching for a user
    Given a user with email "mark@example.com" exists
    And a user with email "peter@example.com" exists
    And I am logged in as admin
    When I open admin users screen
    And I admin search for user "mark"
    Then admin user search results should include "mark@example.com"
    But admin user search results should not include "peter@example.com"

  Scenario: Searching for users by email suffic
    Given a user with email "mark@example.com" exists
    And a user with email "peter@example.com" exists
    And I am logged in as admin
    When I open admin users screen
    And I admin search for user "example.com"
    Then admin user search results should include "mark@example.com"
    And admin user search results should include "peter@example.com"
