require 'rest-client'
require 'json'

module CocktailService
  def self.get_drinks(choice)
    unless choice == nil
    choice_list = choice.downcase.split(', ')
    id_list = []
    available_cocktails = []

      choice_list.each do |ingredient|
      response = RestClient.get("https://www.thecocktaildb.com/api/json/v1/1/filter.php", { params: { i: ingredient } } )
      if response.body == ""
        'error'
    else
        results = JSON.parse(response)
          results['drinks'].each do |drink_name|
            id_list.push drink_name['idDrink']
          end
      end

      id_list.uniq.each do |id|
      response = RestClient.get("https://www.thecocktaildb.com/api/json/v1/1/lookup.php", { params: { i: id } } )
      results = JSON.parse(response)
      ingredients = []
        (1..15).each do |num|
          gaur = results['drinks'][0]['strIngredient' + num.to_s]
          ingredients.push(gaur.downcase) unless gaur.nil?      
        end
          if (ingredients & choice_list == ingredients)
            available_cocktails.push( {id: id, drink: results['drinks'][0]} )
          end
        end
        puts available_cocktails
      end
    end
  end
end