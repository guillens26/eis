Feature: As a user I want to shoot the enemy ships

  Background:
    Given a battleship
  
  Scenario: Shooting and water play
    Given a pos 1,1 in my board without ships
    When i shoot in pos 1,1
    Then my shoot water play
  
  @wip
  Scenario: Touch shot a ship but do not sink
    Given a pos 1,1 in my board with cruiser occuped
    When i shoot in pos 1,1
    Then my shoot shot a ship but do not sink

  @wip
  Scenario: Touch shot a ship and sink
    Given a pos 1,1 in my board with submarine occuped
    When i shoot in pos 1,1
    Then my shot snip the submarine
