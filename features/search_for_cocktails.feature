@get_cocktails
Feature: Search for cocktails
  As user
  In order to know whether my search was succesful
  I need to see the name of the returned drink

  Scenario: Successfully searches for one ingredient
    Given I am on the cocktail page
    And I fill in 'Search' with 'Gin'
    And I click 'Submit'
    Then I should see '3-Mile Long Island Iced Tea'

  Scenario: User can't search
    Given I am on the cocktail page
    And I fill in 'Search' with 'toesblabla'
    And I click 'Submit'
    Then I should see 'Oops, there is no cocktail with that ingredient'