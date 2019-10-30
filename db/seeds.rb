# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  name = Faker::Games::Zelda.item
  address = Faker::Games::Zelda.location
  phone_number = "1234 123456"
  rest = Restaurant.new(name: name, address: address, phone_number: phone_number, category: "japanese")
  p rest.save
end
