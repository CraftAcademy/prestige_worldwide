class CocktailsController < ApplicationController
  def index 
    @cocktails = CocktailService.get_drinks(params[:search])
  end

  def show
    @cocktails = CocktailService.get_single_drink(params[:id])
  end
end
