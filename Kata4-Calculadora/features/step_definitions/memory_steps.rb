Given(/^i did not operations$/) do
  visit '/'
end

Then(/^the number of operations is (\d+)$/) do |arg1|
  expect(page).to have_content("Memory numbers of operations: #{arg1}")
end
