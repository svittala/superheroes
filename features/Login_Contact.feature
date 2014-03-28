Feature: This is the feature to login to the Salesforce application

Background: 
  Given I am on the Salesforce home page
  When I enter the username as "cucumber_demo@csc.com"
  And I enter the password as "Sales@4ce"
  And I click on login

Scenario: This is the first scenario for login
  When I am on home page with title "salesforce.com - Enterprise Edition"
  Then I should see an active tab "Home"

  Scenario: Creating a Contact
  Given I am on the Contacts tab with title "Contacts: Home ~ salesforce.com - Enterprise Edition"
  When I enter the First Name as "George"
  And I enter the Last Name as "Washington"
  And I enter the Account as "CSC"
  And I enter the Phone as "5714119260"
  And I enter the email as "joerge@abc123.com"
  And I click on Save button
  Then I should see the new contact with message "George Washington successfully created"

  Scenario: Editing a Contact
  Given I am on the Contacts tab as title "Contacts: Home ~ salesforce.com - Enterprise Edition"
  When I select the Username as "George"
  And I hit the Edit button
  And I select salutation as "Mr."
  And I enter the title as "Manager"
  And I click the Save button to save the changes
  Then I should see the updated contact details as "Mr. George Washington"

  Scenario: Deleting a Contact
  Given I am on the Contacts tab title "Contacts: Home ~ salesforce.com - Enterprise Edition"
  When I select the Username "George"
  And I hit the Delete button
  And I select OK from the confirmation popup
  Then I should not see the respective contact in the page