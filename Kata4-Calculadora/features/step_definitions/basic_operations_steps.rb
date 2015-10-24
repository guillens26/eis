Given(/^the home page$/) do
  visit '/'
end

Given(/^operator is (\d+)$/) do |arg1|
  fill_in('operator1', with: arg1)
end

Given(/^another operator is (\d+)$/) do |arg1|
  fill_in('operator2', with: arg1)
end

When(/^add$/) do
  select('sum', from: 'operations')
  click_button('=')
end

Then(/^the result is (\d+)$/) do |arg1|
  expect(page).to have_content("The result is: #{arg1}")
end

When(/^subtract$/) do
  select('sub', from: 'operations')
  click_button('=')
end
