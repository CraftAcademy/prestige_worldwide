@get_drinks
Feature: Search for cocktails
  As user
  In order to know wheter my search was succesful
  I need to see the name of the returned drink

  Scenario: Successfully
    Given I am on the home page
    And I fill in 'Search' with 'Gin'
    And I click 'Submit'
    Then I should see '3-Mile Long Island Iced Tea'