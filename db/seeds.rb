# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do
  User.create(
    name: Faker::Name.name,
    username: Faker::Internet.unique.username,
    email: Faker::Internet.unique.email,
    password: '123123'
  )
end

40.times do
  user_id = rand(1..30)
  Tweeet.create(
    tweeet: Faker::Quote.famous_last_words,
    user_id: user_id
  )
end

