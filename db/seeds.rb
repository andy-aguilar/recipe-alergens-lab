# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all

10.times do 
    User.create(name: Faker::DcComics.unique.hero)
end

User.all.each do |user|
    3.times do
        recipe = Recipe.create(name: Faker::Food.unique.dish)
        user.recipes << recipe
    end
end

20.times do
    Ingredient.create(name: Faker::Food.unique.ingredient)
end

Recipe.all.each do |recipe|
    recipe.ingredients << Ingredient.all.sample(5)
end

User.all.each do |user|
    user.ingredients << Ingredient.all.sample(4)
end

