class CocktailsController < ApplicationController
  def index 
   @cocktails = CocktailService.get_drinks
   @cocktails_image = CocktailService.get_drink_image

   
  end
end
