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
Allergy.destroy_all


user1 = User.create(name: "user1" )
user2 = User.create(name: "user2" )
user3 = User.create(name: "user3" )
user4 = User.create(name: "user4" )
user5 = User.create(name: "user5" )
user6 = User.create(name: "user6" )
user7 = User.create(name: "user7" )
user8 = User.create(name: "user8" )

recipe1 = Recipe.create(name: "Recipe1", image_url: "https://images.unsplash.com/photo-1526991204058-9d45349da374?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=098a5989b6f52008feb5c9e2ef430565&auto=format&fit=crop&w=500&q=60")
recipe2 = Recipe.create(name: "Recipe2", image_url: "https://images.unsplash.com/photo-1526991204058-9d45349da374?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=098a5989b6f52008feb5c9e2ef430565&auto=format&fit=crop&w=500&q=60")
recipe3 = Recipe.create(name: "Recipe3", image_url: "https://images.unsplash.com/photo-1526991204058-9d45349da374?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=098a5989b6f52008feb5c9e2ef430565&auto=format&fit=crop&w=500&q=60")
recipe4 = Recipe.create(name: "Recipe4", image_url: "https://images.unsplash.com/photo-1526991204058-9d45349da374?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=098a5989b6f52008feb5c9e2ef430565&auto=format&fit=crop&w=500&q=60")


ingredient1 = Ingredient.create(name:"ingredient1", quantity: "1cups")
ingredient2 = Ingredient.create(name:"ingredient2", quantity: "2cups")
ingredient3 = Ingredient.create(name:"ingredient3", quantity: "4cups")
ingredient4 = Ingredient.create(name:"ingredient4", quantity: "2cups")
ingredient5 = Ingredient.create(name:"ingredient5", quantity: "1cups")
ingredient6 = Ingredient.create(name:"ingredient6", quantity: "6cups")
ingredient7 = Ingredient.create(name:"ingredient7", quantity: "2cups")
ingredient8 = Ingredient.create(name:"ingredient8", quantity: "7cups")
ingredient9 = Ingredient.create(name:"ingredient9", quantity: "2cups")
ingredient10 = Ingredient.create(name:"ingredient10", quantity: "9cups")


user1.recipes << [recipe1, recipe2]
user3.recipes << [recipe3]
user4.recipes << recipe4

recipe1.ingredients << [ingredient1, ingredient2, ingredient9]
recipe2.ingredients << [ingredient3, ingredient4, ingredient10]
recipe3.ingredients << [ingredient5, ingredient6]
recipe4.ingredients << [ingredient7, ingredient8]

user1.allergens << [ingredient1, ingredient2, ingredient3]
user2.allergens << [ingredient4, ingredient5, ingredient6]
user3.allergens << [ingredient1, ingredient2, ingredient3]
user4.allergens << [ingredient4, ingredient5, ingredient6]
user5.allergens << [ingredient1, ingredient2, ingredient3]
user6.allergens << [ingredient1, ingredient2]
user6.allergens << [ingredient1]
