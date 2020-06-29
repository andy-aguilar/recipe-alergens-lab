class Allergy < ApplicationRecord
    belongs_to :user
    belongs_to :ingredient, counter_cache: true
end
