require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'rspec'

#Capybara.run_server = false
#Set default driver as Selenium
#Capybara.default_driver = :selenium
#Set default selector as css
#Capybara.default_selector = :css

Capybara.configure do |config|
	config.app_host = "https://www.google.com"
	config.default_driver = :selenium_chrome
	config.default_max_wait_time = 10
	config.default_selector = :xpath
	config.run_server = false
end

Capybara.register_driver :selenium_chrome do |app|
	#Selenium::WebDriver::Chrome.driver_path = 'C:\driverss\chromedriver.exe'
	Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :selenium_firefox do |app|
	#Selenium::WebDriver::Firefox.driver_path = 'webdrivers/geckodriver'
	Capybara::Selenium::Driver.new(app, browser: :firefox, marionette: true)
end
#Syncronization related settings
module Helpers
  def without_resynchronize
    page.driver.options[:resynchronize] = false
    yield
    page.driver.options[:resynchronize] = true
  end
end
World(Capybara::DSL, Helpers)