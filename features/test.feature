Feature: RSpect Task

Scenario: Attemp to navigate to google
	Given User navigate to google
	And User enters Cucumber tool in search bar
	And User clicks Google Search button
	And Result page should have text
	And Result page should have link
	Then Click on link
	And Page should have text