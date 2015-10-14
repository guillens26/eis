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




Given(/^a board with position (\d+),(\d+) occuped$/) do |arg1, arg2|
  @battleship.create_empty_board(3,3)
  @battleship.put_ship([1,1], 'submarine', 'horizontal')
end

When(/^i put my ship in pos (\d+),(\d+)$/) do |arg1, arg2|
  begin
    @battleship.put_ship([1,1], 'cruiser', 'horizontal')
  rescue Exception => e
     @excepcion = e
  end
end

Then(/^i could not locate my ship in this position because already occupied$/) do
  expect(@excepcion.message).to eq 'The position is already occuped'
end


Given(/^a board size (\d+)x(\d+)$/) do |arg1, arg2|
  @battleship.create_empty_board(3,3)
end

When(/^i put my ship in position (\d+),(\d+)$/) do |arg1, arg2|
  begin
    @battleship.put_ship([2,4], 'cruiser', 'vertical')
  rescue Exception => e
     @excepcion = e
  end
end

Then(/^i cant put my boat in this psition because nonexistent position$/) do
  expect(@excepcion.message).to eq 'The poscion is outside the limits'
end


