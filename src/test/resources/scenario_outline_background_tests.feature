Feature: Test allure report with key words "Scenario Outline" and "Background"

  Background:
    Given I set variable C as "10"

  @SeverityLevel.CRITICAL @Issue("exampleIssue-108") @TestCaseId("example-100")
  Scenario Outline: Check sum A and B
    Given I set variable A as "<varA>"
    And I set variable B as "<varB>"
    When I perform A plus B
    Then result value should be "<expectedValue>"
    Examples:
      | varA | varB | expectedValue |
      | 1    | 2    | 3             |
      | 10   | 50   | 60            |

