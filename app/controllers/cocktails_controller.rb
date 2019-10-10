class CocktailsController < ApplicationController
  def index 
    @cocktails = CocktailService.get_drinks(params[:search])
  end
end
