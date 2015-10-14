require_relative '../../model/battleship'

Given(/^a battleship game$/) do
  @battleship = Battleship.new()
end

Given(/^a board empty$/) do
  @battleship.create_empty_board(3,3)
end

When(/^i put "([^"]*)" in board \[(\d+),(\d+)\] "([^"]*)"$/) do |arg1, arg2, arg3, arg4|
  @battleship.put_ship([1,1], 'submarine', 'horizontal')
end

Then(/^locate my ship successfully$/) do
  expect('submarine').to eq @battleship.board.positions[1,1].ship.name
end
