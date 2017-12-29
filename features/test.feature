Feature: Google Search Capability

	Background: 
 		Given I am located on Google.com

	Scenario: Searching for Cucumber Results
		When I enter Cucumber Tool on the Search Bar
		And User clicks on Google Search button
		Then I should see a site with 'Cucumber is a software tool used by computer programmers for testing other' test
		And I see the text displayed on the link 'Cucumber (software) - Wikipedia'
		And I click on the link having 'Cucumber (software) - Wikipedia'
		Then I should see the text 'Cucumber (software)' within the page
