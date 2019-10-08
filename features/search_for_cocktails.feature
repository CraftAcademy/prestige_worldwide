Feature: Search for cocktails
  As user
  In order to know wheter my search was succesful
  I need to see the name of the returned drink

  Scenario: Successfully
    Given I am on the home page
    And I fill in 'Search by ingredient' with 'Cranberries'
    And I click 'Search'
    Then I should see 'Cranberry Cordial'