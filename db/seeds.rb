# START=======================================================================
# require "json"
# require "open-uri"

# puts "Cleaning Ingredients database..."
# Ingredient.destroy_all

# url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# data_serialized = open(url).read
# data = JSON.parse(data_serialized)

# ingredients = data["drinks"]
# ingredients.each do |ingredient|
#   Ingredient.create(name: ingredient["strIngredient1"])
# end
# puts "Ingredients seeded!"
# =======================================================================END

# START=======================================================================
# cocktails = ["Death in the Afternoon",
#              "Black and Tan",
#              "The Blenheim",
#              "Caipirinha",
#              "Blackthorn",
#              "Flaming Doctor Pepper",
#              "Tamagozake",
#              "Tequila Sunrise",
#              "Vampiro",
#              "Redheaded slut"]

# puts "Cleaning Cocktails database..."
# Cocktail.destroy_all

# cocktails.each do |cocktail|
#   Cocktail.create(name: cocktail)
# end

# puts "Cocktails seeded!"
# =======================================================================END

# =======================================================================
require "faker"

puts "Cleaning Ingredients database..."
Ingredient.destroy_all

50.times do
  Ingredient.create(name: Faker::Food.ingredient)
end
puts "Ingredients seeded!"

puts "Cleaning Cocktails database..."
Cocktail.destroy_all

10.times do
  Cocktail.create(name: Faker::FunnyName.two_word_name)
end
puts "Cocktails seeded!"
# =======================================================================
