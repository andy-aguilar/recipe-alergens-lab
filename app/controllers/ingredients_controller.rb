class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.order('allergies_count DESC')
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end


end
