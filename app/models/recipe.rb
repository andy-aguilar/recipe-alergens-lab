class Recipe < ApplicationRecord
    belongs_to :user
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients

    def self.sort_by_ingredients
        self.all.sort_by do |recipe|
            recipe.ingredients.count
        end.reverse!
    end

    # def allergy_count
    #     self.allergies.count
    # end
end
