# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

User.create(
  first_name: "Admin",
  last_name: "System",
  email: "admin@mail.com",
  password: "123",
  password_confirmation: "123",
  role: "admin"
)

# users_data = lambda do
#   return {
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: '123',
#     password_confirmation: '123',
#     role: 'user'
#   }
# end

# User.create([ (0..10).map { users_data.call } ])
