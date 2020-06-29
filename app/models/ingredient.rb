class Ingredient < ApplicationRecord
    has_many :recipe_ingredients
    has_many :recipes, through: :recipe_ingredients
    has_many :allergies
    has_many :users, through: :allergies


    def self.sort_by_allergies
        self.all.sort_by do |ingredient|
            ingredient.allergy_count
        end.reverse!
    end
    def allergy_count
        self.allergies.count
    end
    
end
