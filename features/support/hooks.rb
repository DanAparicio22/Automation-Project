After do 
    Capybara.current_session.driver.quit
end

Before do
	page.driver.browser.manage.window.maximize
end