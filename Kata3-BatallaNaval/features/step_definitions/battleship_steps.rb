require_relative '../../model/battleship'

Given(/^a battleship game$/) do
  @battleship = Battleship.new()
end

Given(/^a board empty$/) do
  @battleship.create_empty_board(3,3)
end

When(/^i put my ship in board (\d+),(\d+)$/) do |arg1, arg2|
  pending 
end

Then(/^locate my ship successfully$/) do
  pending 
end
