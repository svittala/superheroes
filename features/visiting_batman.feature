Feature: Visiting Batman
	In order to be protected by the dark knight
	As an innocent citizen
	I want to visit Batman
	
	Scenario: Visiting Batman from the superheroes guide
		Given I am at the superheroes guide
		When I follow the guide to Gotham City
		Then I should be protected by Batman
		
	Scenario: Visiting Spiderman from the superheroes guide
		Given I am at the superheroes guide
		When I follow the guide to New York
		Then I should be protected by Spiderman