require 'rest-client'
require 'json'

module CocktailService

  def self.get_drinks(choice)
    
    unless choice == nil
      response = RestClient.get(
        "https://www.thecocktaildb.com/api/json/v1/1/filter.php",
        {
          params: {
            i: choice
          }
        }
      )

      results = JSON.parse(response)
      
      if results == []
        "error"
      else
        results['drinks']
      end
    end    
  end
end