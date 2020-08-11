# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Flat.destroy_all
puts "> Creating flats..."

5.times do 
  Flat.create!(
  name: Faker::Cannabis.brand,
  address: Faker::Address.street_address,
  description: "Beautiful apartment in the heart of the city. Easy access to metro",
  price_per_night: rand(150..250),
  number_of_guests: rand(2..5)
)
end

puts "> Done!"