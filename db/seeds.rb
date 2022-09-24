# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning up database'
Product.destroy_all

puts 'Seeding database with products'
Product.create(
  name: "Rice",
  cost: 7,
  category: "Staples",
  description: "5kg"
)

Product.create(
  name: "Oil",
  cost: 4,
  category: "Staples",
  description: "1 litre"
)

Product.create(
  name: "Sugar",
  cost: 2,
  category: "Staples",
  description: "1kg"
)

Product.create(
  name: "Salt",
  cost: 0.5,
  category: "Staples",
  description: "250g"
)

Product.create(
  name: "Black Coffee 2 in 1",
  cost: 1.5,
  category: "Staples",
  description: "144g"
)

Product.create(
  name: "Tea",
  cost: 1.5,
  category: "Staples",
  description: "120g"
)

Product.create(
  name: "Milo(Refill Pack)",
  cost: 4.5,
  category: "Staples",
  description: "400g"
)

Product.create(
  name: "Assorted Biscuits",
  cost: 7,
  category: "Staples",
  description: "700g"
)

Product.create(
  name: "Bee Hoon",
  cost: 1.5,
  category: "Staples",
  description: "400g"
)

Product.create(
  name: "Macaroni",
  cost: 1.5,
  category: "Staples",
  description: "400g"
)

Product.create(
  name: "Instant Noodles(Curry)",
  cost: 2.5,
  category: "Staples",
  description: "5 packets"
)

Product.create(
  name: "Instant Noodles(Chicken)",
  cost: 2.5,
  category: "Staples",
  description: "5 packets"
)

Product.create(
  name: "Fried Rice Seasoning (Ikan Bilis)",
  cost: 0.5,
  category: "Staples",
  description: "26g"
)

Product.create(
  name: "Fried Rice Seasoning (Kampung)",
  cost: 0.5,
  category: "Staples",
  description: "26g"
)

Product.create(
  name: "Fried Rice Seasoning (Ayam)",
  cost: 0.5,
  category: "Staples",
  description: "26g"
)

Product.create(
  name: "Sardine",
  cost: 3,
  category: "Staples",
  description: "425g"
)

Product.create(
  name: "Sotong Tin",
  cost: 5,
  category: "Staples",
  description: "425g"
)

Product.create(
  name: "Baked Beans",
  cost: 1.5,
  category: "Staples",
  description: "425g"
)

Product.create(
  name: "Condensed Milk",
  cost: 1.5,
  category: "Staples",
  description: "380g"
)

puts '----------Hari Raya Preparation Stuff ---------'

Product.create(
  name: "Raya Cookies",
  cost: 7.5,
  category: "Hari Raya Preparation",
  description: "1 bottle"
)

Product.create(
  name: "Instant Ketupat",
  cost: 4,
  category: "Hari Raya Preparation",
  description: "780g"
)

Product.create(
  name: "Cordial Syrup",
  cost: 4.5,
  category: "Hari Raya Preparation",
  description: "2 litres"
)

Product.create(
  name: "Plain flour",
  cost: 2.5,
  category: "Hari Raya Preparation",
  description: "1kg"
)

Product.create(
  name: "Coconut Cream",
  cost: 1,
  category: "Hari Raya Preparation",
  description: "200ml"
)

Product.create(
  name: "Tumeric Powder",
  cost: 3,
  category: "Hari Raya Preparation",
  description: "250g"
)

Product.create(
  name: "Chilli Powder",
  cost: 3,
  category: "Hari Raya Preparation",
  description: "250g"
)

Product.create(
  name: "Rendang Mix",
  cost: 1.5,
  category: "Hari Raya Preparation",
  description: "125g"
)

Product.create(
  name: "Curry(Meat) Powder",
  cost: 2,
  category: "Hari Raya Preparation",
  description: "250g"
)

Product.create(
  name: "Curry(Fish) Powder",
  cost: 2,
  category: "Hari Raya Preparation",
  description: "250g"
)

puts '----------Cleaning Essentials Stuff ---------'

Product.create(
  name: "Kitchen Roll",
  cost: 5.5,
  category: "Cleaning Essentials",
  description: "6 rolls"
)

Product.create(
  name: "Tissue Box",
  cost: 6,
  category: "Cleaning Essentials",
  description: "4 boxes"
)

Product.create(
  name: "Liquid Detergent Refill",
  cost: 5,
  category: "Cleaning Essentials",
  description: "1.5kg"
)

Product.create(
  name: "Dishwashing Soap",
  cost: 3,
  category: "Cleaning Essentials",
  description: "900ml"
)

Product.create(
  name: "Toothpaste",
  cost: 5,
  category: "Cleaning Essentials",
  description: "250g"
)

Product.create(
  name: "Toothbrush",
  cost: 3.5,
  category: "Cleaning Essentials",
  description: "3 pcs"
)

# require "csv"

# filepath = "./users.csv"

# CSV.foreach(filepath, headers: :first_row) do |row|
#   User.create(name: row['name'], address: row['address'], email: row['email'], contact: row['contact'])
# end
