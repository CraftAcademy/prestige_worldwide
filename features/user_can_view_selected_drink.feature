Feature: User can view selected drink

  As a user
  In order to view details of selected drink
  I need the drink’s details to be displayed seperately on its own

  Background: 
    Given I am on the home page
    And I fill in 'Search' with 'Gin'
    And I click 'Submit'
    Then I should see '3-Mile Long Island Iced Tea'

  Scenario: View selected drink
    When I click on 'Show'
    Then I should see '3-Mile Long Island Iced Tea'
    And I should see 'Light rum'
    And I should see 'Fill 14oz glass with ice and alcohol.'