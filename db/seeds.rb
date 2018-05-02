# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(first_name:  "Henry",
             last_name: "Lin",
             uin: "123456789",
             phone: "1234567890",
             email: "henrysurface@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             email_confirmed: true)
             
User.create!(first_name:  "Henry2",
             last_name: "Lin",
             uin: "123456790",
             phone: "1234567891",
             email: "harrysurfacetw@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             email_confirmed: true)
             
User.create!(first_name:  "Henry3",
             last_name: "Lin",
             uin: "123456791",
             phone: "1234567892",
             email: "henrysurface@tmu.com",
             password:              "123456",
             password_confirmation: "123456",
             email_confirmed: true)


Admin.create!(name:  "Henry",
             email: "henrysurface@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             code: "jzNvvyqZ",
             superadmin: true,
             email_confirmed: true
             )


100.times do |n|
  first_name  = Faker::Name.first_name
  last_name  = Faker::Name.last_name
  email = Faker::Internet.email
  uin = Faker::Number.number(9)
  phone = Faker::Number.number(10)
  password = "password"
  User.create!(first_name:  first_name,
               last_name: last_name,
               email: email,
               uin: uin,
               phone: phone,
               password:              password,
               password_confirmation: password,
               email_confirmed: true)
end

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
