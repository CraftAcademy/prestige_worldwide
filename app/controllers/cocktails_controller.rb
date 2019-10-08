class CocktailsController < ApplicationController
  def index 
   response = CocktailService.get_drinks
   cocktails = JSON.parse(response)
   cocktails['drinks']
  end
end
