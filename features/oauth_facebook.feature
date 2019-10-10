Feature: Authenticating on prestige worldwide with facebook. 
  As a user
	In order to simplify the sign up/login process
	I would like to be able to authenticate myself using facebook

  Scenario: Visitor clicks on 'login with facebook' and gets authenticated
	  Given I am on the home page
    When I click "Login"
	  And I click 'Login with Facebook'
	  Then I am on the home page
	  And I should see "Successfully authenticated from Facebook account"