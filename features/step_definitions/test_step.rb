Given /^I am on Google page$/ do
  visit('https://www.google.com')
end

When /^I search for: (.*?)$/ do |search_term|
  fill_in('lst-ib', :with => search_term).native.send_keys(:return)
  puts 'search: ' + search_term
end

When /^I click on link with text: (.*?)$/ do |link_text|
  click_link(link_text)
end 

Then /^I should see a result with text: (.*?)$/ do |search_result|
  expect(page).to have_content search_result
  puts 'founded the content: ' + search_result
end

Then /^I should see a result link with text: (.*?)$/ do |link_result|
  expect(page).to have_link link_result
  puts 'founded the result: ' + link_result
end
