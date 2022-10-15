# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Destroying all Killteams"
Killteam.destroy_all

puts "Destroying all Warzones"
Warzone.destroy_all

puts "Destroying all users"
User.destroy_all

puts "creating Jonathan"

User.create!(
  email: "jonathan@gmail.com",
  password: "123456"
)

puts "creating Vengaboyz"

Killteam.create!(
  user_id: User.first.id,
  name: "Vengaboyz",
  description: "Ork Kommandoz emulating a group of umies they saw on an old mag tape",
  requisition: "2",
  assetcap: "4",
  base: "Da Vengabus",
  factionkeyword: "Kommandoz"
)
