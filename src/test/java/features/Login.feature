Feature: User Login

	Background:
		Given user opens the browser and navigates to "https://www.gametwist.com/en/"
		When they click on "LOGIN" button
		Then the login form should be displayed
		
	#Test Case 6: Successful login	
	Scenario: Verify if the user is able to login successfully with valid credentials
		When user enters "test" in nickname field
		And they enter "password" in password field
		And they click on "LOG IN" button
		Then the user must be redirected to the home page
		
	#Test Case 7: Forgot password link validation	
	Scenario: Verify forgot password link
		When they click on "Forgotten your password?" link
		Then the user should be redirected to forgot password page
		
	#Test Case 8: Account blocking 	
	Scenario: Verify if the account gets locked after multiple failed attempts
		When they enter invalid credentails multiple times
		Then the user account should be blocked after specific number of failed attempts
		
	#Test Case 9: Register now link validation	
	Scenario: Verify register now link
		When they click on "Register now" link
		Then the user should be redirected to the registration form
		
	#Test Case 10	: Password masking
	Scenario: Verify password masking
		When they enter "password" in the password field
		Then the entered password must be displayed as asterisk or dots
		
	#Test Case 11	: Login automatically
	Scenario: Verify login automatically checkbox
	When user enters "test" in nickname field
	And they enter "password" in password field
	And check "Log in automatically" checkbox
	And click on "LOG IN" button
	Then user should be logged in automatically in their next visits to the application
		
		
		
		