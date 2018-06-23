# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do
  Superhero.create(name: Faker::Superhero.name, age: Faker::Number.between(18, 40), state: Faker::Address.state)
end
10.times do
  randomsuperhero = rand(1..Superhero.all.length)
  Ability.create(power: Faker::Superhero.power, superhero_id: randomsuperhero)
end
