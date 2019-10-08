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

  # to get the reponse from the api to ur fixture file run:
  # curl "https://api.spoonacular.com/recipes/search?apiKey=your-api-key&number=5&query=cheese" -o features/support/fixtures/api_response_food_get_cheese.txt

  stub_request(:get, "https://www.thecocktaildb.com/api/json/v1/1/filter.php").
  with(
    query: {
      i: "Gin"
    }).
  to_return(status: 200, body: Rails.root.join('features', 'support', 'fixtures', 'gin_cocktail_api_response.json').read, headers: {})
end

