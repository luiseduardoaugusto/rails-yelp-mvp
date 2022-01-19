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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number:"94442344", category:"chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number:"94422344", category:"italian" }
epicure = { name: "Epicure", address: "15 Tour laborug St, Paris E2 7JE", phone_number:"94422344",category: "french" }
belgito = { name: "belgicious", address: "15 Tour toas St, belguim", phone_number:"34422344",category: "belgian" }
edo = { name: "edo", address: "15 abbey road St, London", phone_number:"24422344",category: "japanese" }


[ dishoom, pizza_east, epicure, belgito, edo ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
