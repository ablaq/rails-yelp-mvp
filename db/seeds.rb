# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
cocina = { name: "Cocina", address: "56 Place Flagey, 1050 Bruxelles", category: "italian" }
fleur = { name: "Fleur", address: "560 chaussée de waterloo, 1180 Bruxelles", category: "japanese" }
tissens = { name: "Tissens", address: "5 Place Flandres, 1060 Bruxelles", category: "belgian" }

[ dishoom, pizza_east, cocina, fleur, tissens ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
