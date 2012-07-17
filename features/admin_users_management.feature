Feature: Admin - user accounts

  So that I can manage users
  As an admin
  I want to be able to access users thru admin interface

  Scenario: Listing users
    Given I am logged in as admin
    When I follow "Admin"
    And I follow "Users"
    Then I should see "john@doe.com"

  Scenario: Editing a user
    Given a user with email "mark@example.com" exists
    And a user with email "peter@example.com" exists
    And a user with email "simon@example.com" exists
    And I am logged in as admin
    And I am on the homepage
    When I follow "Admin"
    And I follow "Users"
    And I edit user with "mark@example.com" email
    Then the "Email" field should contain "mark@example.com"
    When I fill in "Email" with "mark@newdomain.com"
    And I press "Update"
    Then I should see "User successfully updated"
    And I should see "mark@newdomain.com"

  Scenario: Searching for a user
    Given a user with email "mark@example.com" exists
    And a user with email "peter@example.com" exists
    And I am logged in as admin
    And I am on the homepage
    When I follow "Admin"
    And I follow "Users"
    And I fill in "search_email_contains" with "mark"
    And I press "Search"
    Then I should see "mark@example.com"
    But I should not see "peter@example.com"
    When I fill in "search_email_contains" with "example.com"
    And I press "Search"
    Then I should see "mark@example.com"
    And I should see "peter@example.com"
