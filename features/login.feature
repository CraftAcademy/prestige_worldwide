Feature: Login Functionality
  As a user
  In order to access my account
  I would like to be able to login

  Background:
    Given the following user exists:
      |email       |password|
      |john@doe.com|password|
    And I am on the welcome page

    Scenario: User logs in successfully
      When I click "Login"
      And I fill in "Email" with "john@doe.com"
      And I fill in "Password" with "password"
      And I click "Log in"
      Then I should see "Welcome back Nighthawk!"