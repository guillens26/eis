Given(/^i did not operations$/) do
  visit '/'
end

Then(/^the number of operations is (\d+)$/) do |arg1|
  expect(page).to have_content("Memory numbers of operations: #{arg1}")
end

Given(/^i do a sum$/) do
  fill_in('operator1', with: 2)
  fill_in('operator2', with: 2)
  select('sum', from: 'operations')
  click_button('=')
end

Given(/^i do a substraction$/) do
  fill_in('operator1', with: 2)
  fill_in('operator2', with: 2)
  select('sub', from: 'operations')
  click_button('=')
end
