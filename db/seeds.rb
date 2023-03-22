# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "csv"

puts '*** Cleaning up products/users/cart_items ***'
puts ''
CartItem.destroy_all
Product.destroy_all
Order.destroy_all
User.destroy_all

puts '*** Seeding database with products ***'
puts ''
Product.create(
  name: "Rice",
  cost: 7,
  category: "Staples",
  description: "5kg",
  path: "rice.png"
)

Product.create(
  name: "Oil",
  cost: 4,
  category: "Staples",
  description: "1 litre",
  path: "cooking-oil.png"
)

Product.create(
  name: "Sugar",
  cost: 2,
  category: "Staples",
  description: "1kg",
  path: "sugar.png"
)

Product.create(
  name: "Salt",
  cost: 0.5,
  category: "Staples",
  description: "250g",
  path: "salt.png"
)

Product.create(
  name: "Black Coffee 2 in 1",
  cost: 1.5,
  category: "Staples",
  description: "144g",
  path: "coffee.png"
)

Product.create(
  name: "Tea",
  cost: 1.5,
  category: "Staples",
  description: "120g",
  path: "tea.png"
)

Product.create(
  name: "Milo(Refill Pack)",
  cost: 4.5,
  category: "Staples",
  description: "400g",
  path: "milo.png"
)

Product.create(
  name: "Assorted Biscuits",
  cost: 7,
  category: "Staples",
  description: "700g",
  path: "biscuit.png"
)

Product.create(
  name: "Bee Hoon",
  cost: 1.5,
  category: "Staples",
  description: "400g",
  path: "beehoon.png"
)

Product.create(
  name: "Macaroni",
  cost: 1.5,
  category: "Staples",
  description: "400g",
  path: "macaroni.png"
)

Product.create(
  name: "Instant Noodles (Curry)",
  cost: 2.5,
  category: "Staples",
  description: "5 packets",
  path: "instant-noodles.png"
)

Product.create(
  name: "Instant Noodles (Chicken)",
  cost: 2.5,
  category: "Staples",
  description: "5 packets",
  path: "instant-noodles.png"
)

Product.create(
  name: "Fried Rice Seasoning (Ikan Bilis)",
  cost: 0.5,
  category: "Staples",
  description: "26g",
  path: "seasoning.png"
)

Product.create(
  name: "Fried Rice Seasoning (Kampung)",
  cost: 0.5,
  category: "Staples",
  description: "26g",
  path: "seasoning.png"
)

Product.create(
  name: "Fried Rice Seasoning (Ayam)",
  cost: 0.5,
  category: "Staples",
  description: "26g",
  path: "seasoning.png"
)

Product.create(
  name: "Sardine",
  cost: 3,
  category: "Staples",
  description: "425g",
  path: "sardines.png"
)

Product.create(
  name: "Sotong Tin",
  cost: 5,
  category: "Staples",
  description: "425g",
  path: "sotong-tin.png"
)

Product.create(
  name: "Baked Beans",
  cost: 1.5,
  category: "Staples",
  description: "425g",
  path: "baked-beans.png"
)

Product.create(
  name: "Condensed Milk",
  cost: 1.5,
  category: "Staples",
  description: "380g",
  path: "condensed-milk.png"
)

puts '-- Hari Raya Preparation Stuff --'

Product.create(
  name: "Raya Cookies",
  cost: 7.5,
  category: "Hari Raya Preparation",
  description: "1 bottle",
  path: "raya-cookie.png"
)

Product.create(
  name: "Instant Ketupat",
  cost: 4,
  category: "Hari Raya Preparation",
  description: "780g",
  path: "ketupat.png"
)

Product.create(
  name: "Cordial Syrup",
  cost: 4.5,
  category: "Hari Raya Preparation",
  description: "2 litres",
  path: "syrup.png"
)

Product.create(
  name: "Plain flour",
  cost: 2.5,
  category: "Hari Raya Preparation",
  description: "1kg",
  path: "flour.png"
)

Product.create(
  name: "Coconut Cream",
  cost: 1,
  category: "Hari Raya Preparation",
  description: "200ml",
  path: "coconut-cream.png"
)

Product.create(
  name: "Tumeric Powder",
  cost: 3,
  category: "Hari Raya Preparation",
  description: "250g",
  path: "tumeric-powder.png"
)

Product.create(
  name: "Chilli Powder",
  cost: 3,
  category: "Hari Raya Preparation",
  description: "250g",
  path: "chilli-powder.png"
)

Product.create(
  name: "Rendang Mix",
  cost: 1.5,
  category: "Hari Raya Preparation",
  description: "125g",
  path: "rendang-mix.png"
)

Product.create(
  name: "Curry(Meat) Powder",
  cost: 2,
  category: "Hari Raya Preparation",
  description: "250g",
  path: "curry-powder.png"
)

Product.create(
  name: "Curry(Fish) Powder",
  cost: 2,
  category: "Hari Raya Preparation",
  description: "250g",
  path: "curry-powder.png"
)

puts '-- Cleaning Essentials Stuff --'

Product.create(
  name: "Kitchen Roll",
  cost: 5.5,
  category: "Cleaning Essentials",
  description: "6 rolls",
  path: "kitchen-roll.png"
)

Product.create(
  name: "Tissue Box",
  cost: 6,
  category: "Cleaning Essentials",
  description: "4 boxes",
  path: "tissue-box.png"
)

Product.create(
  name: "Liquid Detergent Refill",
  cost: 5,
  category: "Cleaning Essentials",
  description: "1.5kg",
  path: "detergent.png"
)

Product.create(
  name: "Dishwashing Soap",
  cost: 3,
  category: "Cleaning Essentials",
  description: "900ml",
  path: "dishwashing-soap.png"
)

Product.create(
  name: "Toothpaste",
  cost: 5,
  category: "Cleaning Essentials",
  description: "250g",
  path: "toothpaste.png"
)

Product.create(
  name: "Toothbrush",
  cost: 3.5,
  category: "Cleaning Essentials",
  description: "3 pcs",
  path: "toothbrush.png"
)

puts ''
puts '*** Seeding database with users ***'

filepath = "db/bene.csv"

CSV.foreach(filepath, headers: :first_row) do |row|
  User.create!(
    name: row['name'],
    block: row['block'],
    street: row['street'],
    unit: row['unit'],
    postal: row['postal'],
    email_address: row['email address'].strip.downcase,
    uniquecode: row['uniquecode'],
    handphone: row['handphone'].gsub(' ', '').to_i
  )
end

puts ''
puts '                   __'
puts ' ____             |  |'
puts '|    \ ___ ___ ___|  |'
puts '|  |  | . |   | -_|__|'
puts '|____/|___|_|_|___|__|'
