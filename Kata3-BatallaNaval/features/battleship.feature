Feature: As a user I want to locate my ships

  @wip 
  Scenario: I place my ship successfully
    Given a board
    When i put my ship
    Then locate my ship successfully

  @wip  
  Scenario: Unable to locate my ship in a position already occupied
    Given a board with positions occupied
    When i put my ship
    Then i could not locate my ship in a position already occupied

  @wip
  Scenario: 
    Given a board 2x2
    When i put my ship in pos 3.2
    Then i can not put my boat in a nonexistent position
