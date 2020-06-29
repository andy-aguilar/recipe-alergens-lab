class AddAllergiesCountToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :allergies_count, :integer
  end
end
