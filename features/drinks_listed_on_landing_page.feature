Feature: List cocktails on landing page
  As a user
  When I visit the landing page
  I'd like to see a list of available drinks

  Scenario: Successfully
    Given I am on the home page
    And I fill in 'Search by ingredient' with 'Cranberries'
    And I click 'Search'
    Then I should see 'Cranberry Cordial'