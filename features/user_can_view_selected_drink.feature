@get_cocktails
@show_cocktail
Feature: User can view selected drink
  As a user
  In order to view details of selected drink
  I need the drink’s details to be displayed seperately on its own

  Background: 
    Given I am on the home page
    And I fill in 'Search' with 'Gin'
    And I click 'Submit'

  Scenario: View selected drink
    When I click '3-Mile Long Island Iced Tea'
    Then I should see '3-Mile Long Island Iced Tea'
    And I should see 'light rum'
    And I should see 'Fill 14oz glass with ice and alcohol. Fill 2/3 glass with cola and remainder with sweet & sour. Top with dash of bitters and lemon wedge.'