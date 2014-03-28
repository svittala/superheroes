Feature: This is the feature to login to the SFDC application

  Scenario: This is the first scenario for login
	Given I am on the SFDC login page
	When I enter the username 
	And I enter the password
	And I click on login button
	Then I should be logged to home tab

 Scenario: This is the Task scenario 
 	Given I am on the SFDC home page
 	When I click New Task
 	Then I should see Task Information