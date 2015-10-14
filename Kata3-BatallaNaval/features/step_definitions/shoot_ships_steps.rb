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


Given(/^my board with cruiser in and (\d+),(\d+) (\d+),(\d+) occuped$/) do |arg1, arg2, arg3, arg4|
  @battleship.create_empty_board(3,3)
  @battleship.put_ship([1,1], 'cruiser' , 'horizontal')
end

When(/^i shoot in positiom (\d+),(\d+)$/) do |arg1, arg2|
  @expected = @battleship.shoot([2,1])
end

Then(/^my shoot shot a ship but do not sink$/) do
  expect(@expected).to eq 'touched'
end
