Feature: Amount memory operations

  Background:
    Given the home page

  Scenario: i did not operations
    Given i did not operations
    Then the number of operations is 0

  Scenario: when I increased the number of operations
    Given i do a sum
    And i do a substraction
    Then the number of operations is 2
  
  Scenario: when the number of reset operations is reset
    Given i do a sum
    And i do a substraction
    And reseteo la memoria
    Then the number of operations is 0