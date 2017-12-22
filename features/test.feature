Feature: Find Cucumber wikipedia page

	Background: 
		Given I am on the search page


	Scenario: Search for cucumber wikipedia
	When I type "Cucumber tool"
	And I click on search button
	Then I should see "Cucumber is a software tool used by computer programmers for testing other"
	And I should see "Cucumber (software) - Wikipedia" link displayed
	And I click on "Cucumber (software) - Wikipedia" 
	Then I check the page title "Cucumber (software)" is diplayed


				
