Feature: Test allure report with key word "Scenario Outline"

  @SeverityLevel.MINOR @Issue("exampleIssue-110") @TestCaseId("example-101")
  Scenario Outline: Check sum A and B
    Given I set variable A as "<varA>"
    And I set variable B as "<varB>"
    And I set variable C as "<varC>"
    When I perform A plus B plus C
    Then result value should be "<expectedValue>"
    Examples:
      | varA | varB | varC | expectedValue |
      | 5    | 8    | 2    | 15            |
      | 10   | 50   | 12   | 72            |