puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
gerbi = { name: "Gerbi", address: "Gerbergasse, Bienne", phone_number: "034 333 45 67", category: "french" }
pizzeria_da_pepe = { name: "Pizzeria da Pepe", address: "Zentralstrasse, Bienne", phone_number: "034 222 25 47", category: "italian" }
niang_ha = { name: "Niang Ha", address: "Dufourstrasse, Bienne", phone_number: "033 556 67 66", category: "japanese" }
flower_power = { name: "Flower Power", address: "Mattenring, Luzern", phone_number: "041 324 44 44", category: "chinese" }
nama_hui = { name: "Nama Hui", address: "Hauptstrasse, Basel", phone_number: "055 456 43 22", category: "belgian" }

[gerbi, pizzeria_da_pepe, niang_ha, flower_power, nama_hui].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
