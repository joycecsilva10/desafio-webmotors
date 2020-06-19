require 'selenium-webdriver'
include Capybara::DSL

Before do
    Capybara.page.driver.browser.manage.window.maximize
    @HomePage = HomePage.new
    @StockPage = StockPage.new
end

After do
    Capybara.reset_sessions!
end