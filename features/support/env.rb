require 'cucumber/rails'
require 'webmock/cucumber'

ActionController::Base.allow_rescue = false

WebMock.allow_net_connect!

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

Before '@get_cocktails' do
  stub_request(:get, "https://www.thecocktaildb.com/api/json/v1/1/filter.php").
  with(
    query: {
      i: "Gin"
    }).
  to_return(status: 200, body: Rails.root.join('features', 'support', 'fixtures', 'gin_cocktail_api_response.json').read, headers: {})
end

Before '@show_cocktail' do
  stub_request(:get, "https://www.thecocktaildb.com/api/json/v1/1/lookup.php").
  with(
    query: {
      i: 15300
    }).
  to_return(status: 200, body: Rails.root.join('features', 'support', 'fixtures', 'long_island_cocktail_api_response.json').read, headers: {})
end

