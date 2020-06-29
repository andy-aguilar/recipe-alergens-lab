class Ingredient < ApplicationRecord
    has_many :recipe_ingredients
    has_many :recipes, through: :recipe_ingredients
    has_many :allergies
    has_many :users, through: :allergies


    # def self.order_by_allergy
    #     self.order(allergy_count: :desc)
    # end

    def allergy_count
        self.allergies.count
    end
end
