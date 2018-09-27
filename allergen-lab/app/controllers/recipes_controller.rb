class RecipesController < ApplicationController

  def index
    if params[:filter].nil? && params[:sort_by_number].nil?
      @recipes = Recipe.all
    elsif params[:filter]
      @recipes = Recipe.filter_by_ingredient_number(params[:filter].to_i)
    elsif params[:sort_by_number] == "order by asc"
      @recipes = Recipe.sort_by_ingdredient_number
    else
      @recipes = Recipe.sort_by_ingdredient_number.reverse
    end

  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  private
    def recipe_params
      params.require(:recipe).permit(:name, :user_id)
    end
end
