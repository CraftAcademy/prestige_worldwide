require 'rest-client'
require 'json'

module CocktailService
  def self.get_drinks
    response = RestClient.get('https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=Cranberries')
  end
end