require 'rspec/expectations'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'

ENV['USERCOMPANY']="company@mail.com"
ENV['PSWCOMPANY']="Company1"

ENV['USERADMIN']="Administrador.bolsadetrabajoucb@gmail.com"
ENV['PSWADMIN']="123456Ab"

Capybara.default_driver = :selenium

# Set the host the Capybara tests should be run against
Capybara.app_host = ENV["CAPYBARA_HOST"]

# Set the time (in seconds) Capybara should wait for elements to appear on the page
Capybara.default_max_wait_time = 20
Capybara.default_driver = :selenium
Capybara.app_host = "http://bolsadetrabajo.ucbcba.edu.bo/"

class CapybaraDriverRegistrar
  def self.register_selenium_driver(browser)
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, :browser => browser)
    end
  end
end

# Register various Selenium drivers
#CapybaraDriverRegistrar.register_selenium_driver(:edge)
#CapybaraDriverRegistrar.register_selenium_driver(:firefox)
CapybaraDriverRegistrar.register_selenium_driver(:chrome)
Capybara.run_server = false