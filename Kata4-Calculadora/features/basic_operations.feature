Feature: Basic operations
  
  Background:
    Given the home page

  Scenario: add
    Given operator is 1
    And another operator is 2
    When add
    Then the result is 3
  
  Scenario: subtraction
    Given operator is 2
    And another operator is 2
    When subtract
    Then the result is 0

  Scenario: average
    Given operator is 1
    And another operator is 3
    When the average is 2
    Then the result is 2
