Feature: Visit welcome page
  As a user
  When I visit the landing page
  I want to view basic information about the app

  Scenario: Visiting the welcome page
    Given I am on the welcome page
    Then I should see "Prestige Worldwide"
    And I should see "Home"
    And I should see "Login"