Feature: Sign up for an account
  As a user
  In order to access the website content
  I would like to be able to sign up

  Background: 
    Given I am on the home page
    And I click "Login"
    And I click "Sign up"

  Scenario: Creating an account[Happy Path]
    When I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Sign up"
    Then I should see "Signed up successfully."

  Scenario: Unsuccessfully creating an account[Sad Path]
    When I fill in "Email" with ""
    And I fill in "Password" with ""
    And I fill in "Password confirmation" with "password"
    And I click "Sign up"
    Then I should see "Email can't be blank"
    And I should see "Password can't be blank"

  Scenario: Not entering correct information[Sad Path]
    When I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "passw"
    And I fill in "Password confirmation" with "password"
    And I click "Sign up"
    And I should see "Password is too short (minimum is 6 characters)"
    And I should see "Password confirmation doesn't match Password"