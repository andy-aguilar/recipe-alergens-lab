class RecipesController < ApplicationController
    before_action :set_recipe, only: [:show, :edit, :update]
    
    def index
        if params["sort"] == "true"
            @recipes = Recipe.sort_by_ingredients
            @sort = true
        elsif params["sort"] == "false"
            @recipes = Recipe.all
            @no_sort = true
        else
            @recipes = Recipe.all
            @sort = false
            @no_sort = false
        end
    end

    def show 
    end

    def new
        @recipe = Recipe.new
    end

    def create 
        @recipe = Recipe.create(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    def edit
    end

    def update
        @recipe.update(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :user_id, :ingredient_ids => [])
    end

    def set_recipe
        @recipe = Recipe.find(params[:id])
    end
    
end
