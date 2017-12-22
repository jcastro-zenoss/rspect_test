Given("I am on the search page") do
    visit ("/")
end

When (/^I type "(.*)"$/)  do |text|
	fill_in('lst-ib', :with => text)
end

When ("I click on search button") do 
	 click_on 'Buscar con Google'
end

Then (/^I should see "(.*)"$/ ) do |string|
    expect(page).to have_text(string)
end

Then (/^I should see "(.*)" link displayed$/) do |message|
   expect(page).to have_link(message)
end

Then(/^I click on "(.*)"$/) do |link|
  	 click_link_or_button (link)
end

Then(/^I check the page title "(.*)" is diplayed$/) do |title|
  expect(page).to have_title(title)
end