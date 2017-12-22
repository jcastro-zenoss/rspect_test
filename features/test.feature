Feature: Google search

  Scenario: Search cucumber
    Given I am on Google page
    When I search for: Cucumber tool
    Then I should see a result with text: Cucumber is a software tool used by computer programmers for testing other 
    And I should see a result link with text: Cucumber (software) - Wikipedia
    When I click on link with text: Cucumber (software) - Wikipedia
    Then I should see a result with text: Cucumber (software)
