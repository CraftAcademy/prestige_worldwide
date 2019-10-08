class CocktailsController < ApplicationController
  def index 
    @cocktails = CocktailService.get_drinks(params[:search])
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:search)
  end
end
