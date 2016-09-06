Feature: Test allure report with key word "Scenario"

  @SeverityLevel.NORMAL
  @Issue("exampleIssue-110")
  @Issue("exampleIssue-112")
  @TestCaseId("example-103")
  Scenario: Check sum A and B and C
    Given I set variable A as "5"
    And I set variable B as "10"
    And I set variable C as "2"
    When I perform A plus B plus C
    Then result value should be "17"

  @SeverityLevel.BLOCKER
  @Issue("exampleIssue-210")
  @Issue("exampleIssue-230")
  @TestCaseId("example-103")
  Scenario: Negative testcase.Check sum A and B and C
    Given I set variable A as "5"
    And I set variable B as "10"
    And I set variable C as "2"
    When I perform A plus B plus C
    Then result value should be "19"
