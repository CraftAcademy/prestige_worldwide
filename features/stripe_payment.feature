Feature: Paying to use cocktails worldwide
  As a visitor
  In order to access the features of the website
  I would like to be able to purchase access for my account

  Background:
    Given the following user exists:
      | email        | password |
      | john@doe.com | password |
    And I am logged in as "john@doe.com"
    And I am on the home page

  @javascript
  Scenario: Visitor creates an account and buys access
  Then STOP
    When I click "PAY!!"
    Then I should be on a purchase page
    And I wait 3 seconds
    And I fill in the Stripe field "CC number" with "4242424242424242"
    And I fill in the Stripe field "Expiry date" with "12/23"
    And I fill in the Stripe field "CVC" with "123"
    And I submit the Stripe form
    Then I should see "Thank you! You can now use cocktails worldwide."