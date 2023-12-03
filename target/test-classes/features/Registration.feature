Feature: User Registration

	Background:
		Given user opens the browser and navigates to "https://www.gametwist.com/en/"
		And they click on "REGISTER" button
		Then registration form shoulbe be displayed
		
	#Test Case 1: Successful registration
  Scenario: Verify if user is able to register successfully 
    When user fills form details
    	| E-mail 				 | Nickname | Password    | Day | Month   | Year |
    	| test@gmail.com | test			| Password123 | 1  	| January | 1994 |
    And check captcha checkbox
    And solve the captcha
    And check terms and conditions checkbox
    And click on "BEGIN ADVENTURE" button
    Then they should be redirected to the registration confirmation page
    And registration confirmation mail must sent to the user email ID

	#Test Case 2: Mandatory field validation
  Scenario: Verify display of validation messages when mandatory fields are not filled
    When they click on "BEGIN ADVENTURE" button
    Then validation messages must be displayed for each mandatory field

	#Test Case 3: Verify error message displayed for duplicate nicknames
  Scenario: Verify uniqueness of nickname
    Given nickname "test" is already taken
    When they enter "test" in nickname field
    Then error message with available nickname suggestions should be displayed
 
   #Test Case 4: Verify error message displayed for duplicate email ID  
   Scenario: Verify registration with exisiting email ID
    When user fills form details
    	| E-mail 				 | Nickname | Password    | Day | Month   | Year |
    	| test@gmail.com | test1		| Password123 | 1  	| January | 1994 |
    And check captcha checkbox
    And solve the captcha
    And check terms and conditions checkbox
    And click on "BEGIN ADVENTURE" button
    Then "The e-mail address you entered is already in use." message must be displayed for email textbox
    
    #Test Case 5: Catpcha Timeout
    Scenario: Verify captcha timout error
    When user fills form details
    	| E-mail 				 | Nickname | Password    | Day | Month   | Year |
    	| test@gmail.com | test1		| Password123 | 1  	| January | 1994 |
    And check captcha checkbox
    And solve the captcha
    And check terms and conditions checkbox
    And wait "60" seconds
    Then "Verification expired. Check the checkbox again." error message must be displayed for captcha checkbox
 