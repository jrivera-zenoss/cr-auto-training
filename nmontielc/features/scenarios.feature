Feature: Testing different ways to try to login into the app

	Background: 
		Given I am on the login page
				
	
    Scenario: Wrong credentials
	When I attent to login with invalid credentials
	And I press the submit button
	Then a message should be displayed
	
	Scenario: Username is not being typed
	When I attent to login without type a username 
	And the password is correct
	And I press the submit button
	Then a message should be displayed
	
	Scenario: Password is not being provided
	When I attent to login without type a password
	And the username is correct
	And I press the submit button
	Then a message should be displayed
	
	Scenario: Correct crendentials have been provided
	When I attent to login with correct credentials
	And I press the submit button
	Then the Dashboard page should be displayed
	And I press the logout button 
	Then I should be redirect to the login page