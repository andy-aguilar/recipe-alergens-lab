class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.order(allergies_count: :desc)
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end


end
