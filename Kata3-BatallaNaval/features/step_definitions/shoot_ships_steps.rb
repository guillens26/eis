require_relative '../../model/battleship'

Given(/^a battleship$/) do
  @battleship = Battleship.new()
end


Given(/^a pos (\d+),(\d+) in my board without ships$/) do |arg1, arg2|
  @battleship.create_empty_board(3,3)
end

When(/^i shoot in pos (\d+),(\d+)$/) do |arg1, arg2|
  @battleship.shoot([1,1])
end

Then(/^my shoot water play$/) do
  expect('water').to eq @battleship.state_in([1,1])
end
