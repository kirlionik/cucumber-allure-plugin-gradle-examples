Feature: Test allure report with key words "Scenario" and "Background"
  Background:
    Given I set variable A as "100"
    And I set variable B as "23"

  @SeverityLevel.BLOCKER @TestCaseId("example-99")
  Scenario: Check sum
      When I perform A plus B
      Then result value should be "123"