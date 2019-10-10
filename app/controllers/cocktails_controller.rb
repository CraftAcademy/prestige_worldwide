class CocktailsController < ApplicationController
  def index 
    @cocktails = CocktailService.get_drinks(params[:search])
  end

  def show
    @cocktail = CocktailService.get_single_drink(params[:id])
  end

end
