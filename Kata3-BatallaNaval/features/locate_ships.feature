Feature: As a user I want to locate my ships

  Background:
    Given a battleship game
  
  Scenario: I place my ship successfully
    Given a board empty
    When i put "submarine" in board [1,1] "horizontally"
    Then locate my ship successfully
  
  Scenario: Unable to locate my ship in a position already occupied
    Given a board with position 2,2 occuped
    When i put my ship in pos 2,2
    Then i could not locate my ship in this position because already occupied

  Scenario: I cant locate my boat in a position off the board
    Given a board size 3x3
    When i put my ship in position 4,2
    Then i cant put my boat in this psition because nonexistent position
