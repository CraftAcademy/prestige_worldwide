Feature: Visit welcome page
  As a user
  In order to learn about the offerings 
  I would like to learn more about the app 
  
  Scenario: Visiting the welcome page
    Given I am on the welcome page
    Then I should see "Prestige Worldwide"
    And I should see "Don't think, just drink!"
    And I should see "Login"