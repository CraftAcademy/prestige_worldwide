require 'cucumber/rails'
require 'webmock/cucumber'

ActionController::Base.allow_rescue = false

WebMock.allow_net_connect!

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Webdrivers::Chromedriver.required_version = 2.44
chrome_options = %w[headless
                    no-sandbox
                    disable-popup-blocking
                    disable-gpu
                    disable-infobars
                    disable-dev-shm-usage
                    auto-open-devtools-for-tabs]

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
    args: chrome_options
  )
  Capybara::Selenium::Driver.new(
    app, 
    browser: :chrome,
    options: options
  )
end

Capybara.server = :puma
Capybara.javascript_driver = :chrome
Cucumber::Rails::Database.javascript_strategy = :truncation

Before '@get_cocktails' do
  stub_request(:get, "https://www.thecocktaildb.com/api/json/v1/1/filter.php").
  with(
    query: {
      i: "Gin"
    }).
  to_return(status: 200, body: Rails.root.join('features', 'support', 'fixtures', 'gin_cocktail_api_response.json').read, headers: {})
end

