Feature: Login Functionality
  As a user
  In order to access my account
  I would like to be able to login

  Background:
    Given the following user exists:
      |email       |password|
      |john@doe.com|password|
    And I am on the home page

  Scenario: User logs in successfully [Happy path]
    When I click "Login"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password"
    And I click "Log in"
    Then I should see "Signed in successfully."

  Scenario: User enters invalid credentials [Sad path]
    When I click "Login"
    And I fill in "Email" with ""
    And I fill in "Password" with ""
    And I click "Log in"
    Then I should see "Invalid Email or password."