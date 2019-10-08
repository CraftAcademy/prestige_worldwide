class CocktailsController < ApplicationController
  def index 
   response = CocktailService.get_drinks
  end
end
