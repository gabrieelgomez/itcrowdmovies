# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do
  Movie.create(
    title: Faker::Movie.quote,
    release: Faker::Date.between(2.days.ago, Date.today)
  )
  Person.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

(1..15).each do |index|
  Role.create(
    person_id: index,
    movie_id: index,
    role_type: Role.role_types.keys.sample
  )
end

User.create(
  email: "admin@mail.com",
  password: '12345678',
  password_confirmation: '12345678'
)