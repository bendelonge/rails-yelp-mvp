# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating restaurants...'
tour_d_argent = Restaurant.new(name: "La Tour d'Argent", address: "Paris", category: "french")
tour_d_argent.save!

palais_tokyo = Restaurant.new(name: "Le palais de Tokyo", address: "Paris", category: "japanese")
palais_tokyo.save!
puts 'Finished!'
