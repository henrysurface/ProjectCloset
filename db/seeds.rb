# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




100.times do |n|
  appid  = Faker::GameOfThrones.character
  gender  = "F"
  article = "Sack"
  size = Faker::Number.number(2)
  status = "Available"
  Suit.create!( appid  = appid,
                gender  = gender,
                article = article,
                size = size,
                status = status)
end
