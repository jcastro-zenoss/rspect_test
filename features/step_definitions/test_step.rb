#Step definitions
Given("I am located on Google.com") do
  visit ("/")
end

When("I enter Cucumber Tool on the Search Bar") do
	fill_in('lst-ib', :with => 'Cucumber Tool')
end

When("User clicks on Google Search button") do
  click_on('Buscar con Google')
end

Then("I should see a site with {string} test") do |string|
	expect(page).to have_text(string)
end

Then("I see the text displayed on the link {string}") do |string|
	expect(page).to have_text(string)
end

Then("I click on the link having {string}") do |string|
	click_link(string)
end

Then("I should see the text {string} within the page") do |string|
	expect(page).to have_text(string)
end