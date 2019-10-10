Feature: Visit home page
  As a user
  In order to learn about the offerings 
  I would like to learn more about the app 
  
  Scenario: Visiting the home page
    Given I am on the home page
    Then I should see "Prestige Worldwide"
    And I should see "Don't think, just drink!"
    And I should see "Login"