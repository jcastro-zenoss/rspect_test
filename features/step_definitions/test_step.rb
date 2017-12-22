Given("User navigate to google") do
  visit("/")
end

And("User enters Cucumber tool in search bar") do
	fill_in('lst-ib', :with => 'Cucumber tool')
end

And("User clicks Google Search button") do
	click_button('Buscar con Google')
end

And("Result page should have text") do
	expect(page).to have_text("Cucumber is a software tool used by computer programmers for testing other")
end

And("Result page should have link") do
	expect(page).to have_link(nil, href: 'https://en.wikipedia.org/wiki/Cucumber_(software)')
end

Then("Click on link") do
	click_link('Cucumber (software) - Wikipedia')
end

And("Page should have text") do
	expect(page).to have_text("Cucumber (software)")
end