require 'rspec'
require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
	config.app_host = 'https://www.google.com'
	config.default_driver = :selenium_chrome
	config.default_max_wait_time = 10
	config.default_selector = :xpath
	config.run_server = false

end

Capybara.register_driver :selenium_chrome do |app|
	#selenium::WebDriver::Chrome.driver_path = 'C:\drivers\chromedriver_win32'
	Capybara::Selenium::Driver.new(app, browser: :chrome)
end