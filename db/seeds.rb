# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
  # Ingredient.create(name: "lemon")
  # Ingredient.create(name: "ice")
  # Ingredient.create(name: "mint leaves")
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)["drinks"]

ingredients.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

Cocktail.create(name: "Le Basile")
