# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name: "Hoang Mirs",
  email: "hoang@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  role: 2)

20.times do |n|
  name  = Faker::Name.name
  email = "trainee-#{n+1}@gmail.com"
  password = "111111"
  User.create!(name: name, email: email, password: password,
    password_confirmation: password, role: 0)
end
