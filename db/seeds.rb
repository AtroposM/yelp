# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "belgian",phone_number: "12345678" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" ,phone_number: "12345678" }
five_guys = {name: "Five Guys", address: "La Defense", category: "italian", phone_number: "12345678"}
surpriz = { name: "Sürpriz", address: "Rue Oberkampf", category: "belgian", phone_number: "12345678"}
origami = {name: "Origami", address: "Rue Alesia", category: "japanese", phone_number: "12345678"}

[dishoom, pizza_east, five_guys, surpriz, origami].each do |attributes|
  restaurant = Restaurant.create(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
