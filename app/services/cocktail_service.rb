require 'rest-client'
require 'json'

module CocktailService
  response = RestClient.get('https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=Cranberries')
  @results = JSON.parse(response.body)

  def self.get_drinks
    @results['drinks'][0]['strDrink']    
  end

  def self.get_drink_image
    @results['drinks'][0]['strDrinkThumb']
  end
end