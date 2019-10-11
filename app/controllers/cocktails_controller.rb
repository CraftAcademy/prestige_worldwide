class CocktailsController < ApplicationController
  def index 
    @cocktails = CocktailService.get_drinks(params[:search])
  end

  def show
    @cocktail = CocktailService.get_single_drink(params[:id])

    @ingredients = []
    (1..15).each do |n|
      ing = @cocktail['strIngredient' + n.to_s]
      @ingredients.push(ing.downcase) unless ing.nil?
    end
  end
end
