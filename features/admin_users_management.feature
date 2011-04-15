Feature: Admin - user accounts

  So that I can manage users
  As an admin
  I want to be able to access users thru admin interface

  Scenario: Listing users
    Given I am logged in as admin
    When I follow "Admin"
    And I follow "Users"
    Then I should see "john@doe.com"
